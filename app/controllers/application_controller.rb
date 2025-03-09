class ApplicationController < ActionController::API

    include ActionController::RequestForgeryProtection
    include ActionController::Cookies
    include ActionController::MimeResponds
    include ActiveStorage::Streaming if defined?(ActiveStorage::Streaming)

    rescue_from StandardError, with: :unhandled_error
    rescue_from ActionController::InvalidAuthenticityToken,
    with: :invalid_authenticity_token

    protect_from_forgery with: :null_session

    skip_before_action :verify_authenticity_token
    before_action :set_csrf_cookie
    before_action :snake_case_params, :attach_authenticity_token, :set_active_storage_url_options

    def current_user
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    def login!(user)
        session[:session_token] = user.reset_session_token!
    end

    def logout!
        current_user.reset_session_token! if current_user
        session[:session_token] = nil
        @current_user = nil
    end

    def require_logged_in
        unless current_user
            render json: { message: 'You must be logged in to do this action.' }, status: :unauthorized
        end
    end

    private

    def snake_case_params
        params.deep_transform_keys!(&:underscore)
    end

    def attach_authenticity_token(response = nil)
        response ||= {}
        response[:csrf] = {
            token: form_authenticity_token,
            header: request_forgery_protection_token,
            param: request_forgery_protection_token.to_s
        }
        response
    end

    def invalid_authenticity_token
        render json: { message: 'Invalid authenticity token' },
        status: :unprocessable_entity
    end

    def unhandled_error(error)
        if request.accepts.first.html?
            raise error
        else
            @message = "#{error.class} - #{error.message}"
            @stack = Rails::BacktraceCleaner.new.clean(error.backtrace)
            render 'api/errors/internal_server_error', status: :internal_server_error
            logger.error "\n#{@message}:\n\t#{@stack.join("\n\t")}\n"
        end
    end

    def set_csrf_cookie
        cookies["CSRF-TOKEN"] = {
            value: form_authenticity_token,
            same_site: :lax,
            secure: Rails.env.production?
        }
    end

    def set_active_storage_url_options
        if Rails.env.development?
            host = 'localhost:3000'
            protocol = 'http'
        else
            host = ENV.fetch('RAILS_HOST') { 'example.com' }
            protocol = 'https'
        end

        ActiveStorage::Current.url_options = {
            host: host,
            protocol: protocol
        }
    end
end

async function restoreCSRF() {
  const response = await fetch('/api/session', {
    credentials: 'include'
  });
  if (response.ok) {
    const token = document.querySelector('meta[name="csrf-token"]')?.content;
    if (token) sessionStorage.setItem('X-CSRF-Token', token);
  }
}

async function csrfFetch(url, options = {}) {
  options.method = options.method || "GET";
  options.headers = options.headers || {};
  options.credentials = 'include';

  if (options.method.toUpperCase() !== "GET") {
    if (!options.headers["Content-Type"] && !(options.body instanceof FormData)) {
      options.headers["Content-Type"] = "application/json";
    }
    options.headers["X-CSRF-Token"] = sessionStorage.getItem("X-CSRF-Token");
  }

  const res = await fetch(url, options);
  if (res.status >= 400) throw res;
  return res;
}

export { restoreCSRF, csrfFetch };
export default csrfFetch;

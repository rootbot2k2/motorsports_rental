import "./Footer.css";
import { GoRepo } from "react-icons/go";
import { BsLinkedin } from "react-icons/bs";
import { BsStars } from "react-icons/bs";

const Footer = () => {
  return (
    <div id="splash-footer">
      <div id="footer-icons-container">
        <a
          id="name"
          href="https://www.taisiat.com/?utm_source=caro&utm_medium=footer"
          target="_blank"
          rel="noopener noreferrer"
        >
          TAISIA KARASEVA
        </a>
        <a
          className="footer-link"
          href="https://github.com/taisiat/Caro.git"
          target="_blank"
          rel="noopener noreferrer"
        >
          <GoRepo />
        </a>
        <a
          className="footer-link"
          href="https://www.linkedin.com/in/taisiakaraseva/"
          target="_blank"
          rel="noopener noreferrer"
        >
          <BsLinkedin />
        </a>
        <a
          className="footer-link"
          href="https://www.taisiat.com/?utm_source=caro&utm_medium=footer"
          target="_blank"
          rel="noopener noreferrer"
        >
          <BsStars />
        </a>
      </div>
    </div>
  );
};

export default Footer;

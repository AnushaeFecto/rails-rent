import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Find Your Dream Dress", "Rent It Today"],
    typeSpeed: 150,
    loop: true
  });
}

export { loadDynamicBannerText };

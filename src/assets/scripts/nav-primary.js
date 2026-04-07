document.addEventListener('DOMContentLoaded', () => {
    if (window.innerWidth <= 576) {
        // Set the button as closed
        const menuButton = document.querySelector('.js-closeMenuOnMobile__button');
        menuButton.classList.add('collapsed');
        menuButton.setAttribute('aria-expanded', 'false');

        // Set the menu as closed
        document.querySelector('.js-closeMenuOnMobile__container').classList.remove('show');
    }
});

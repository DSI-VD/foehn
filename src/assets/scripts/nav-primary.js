/**
 * Close nav-primary if the page is loaded on a mobile phone
 */
$(document).ready(() => {
    const screen = $(window);
    if (screen.width() <= 576) {
        // Set the button as closed
        $('.js-closeMenuOnMobile__button').addClass('collapsed').attr('aria-expanded', 'false');
        // Set the menu as closed
        $('.js-closeMenuOnMobile__container').removeClass('show');
    }
});

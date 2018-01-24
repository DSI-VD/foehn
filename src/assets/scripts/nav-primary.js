/**
 * Close nav-primary if the page is loaded on a mobile phone
 */
$(document).ready(function closePrimaryNav() {
    const screen = $(window);
    if (screen.width() <= 576) {
        // set the button as closed
        $('.js-closeMenuOnMobile__button').addClass('collapsed').attr('aria-expanded', 'false');
        // set the menu as closed
        $('.js-closeMenuOnMobile__container').removeClass('show');
    }
});

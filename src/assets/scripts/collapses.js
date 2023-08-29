/**
 * Code related to collapses
 */
document.addEventListener('DOMContentLoaded', () => {
    document.querySelector('#login-button').addEventListener('click', () => {
        document.querySelector('#login-button-icon').classList.toggle('fa-chevron-down');
        document.querySelector('#login-button-icon').classList.toggle('fa-chevron-up');
    });
});

/**
 * Code related to collapses
 */
document.addEventListener('DOMContentLoaded', () => {
    const loginCollapse = new bootstrap.Collapse('#login-form-collapse', {
        toggle: false
    });
    document.addEventListener('click', event => {
        if (!document.querySelector('#login-form-collapse').contains(event.target)) {
            loginCollapse.hide();
        }
    });

    document.querySelector('#login-form-collapse').addEventListener('hide.bs.collapse', () => {
        document.querySelector('#login-button-icon').classList.toggle('fa-chevron-down');
        document.querySelector('#login-button-icon').classList.toggle('fa-chevron-up');
    })

    document.querySelector('#login-form-collapse').addEventListener('show.bs.collapse', () => {
        document.querySelector('#login-button-icon').classList.toggle('fa-chevron-down');
        document.querySelector('#login-button-icon').classList.toggle('fa-chevron-up');
    })
});

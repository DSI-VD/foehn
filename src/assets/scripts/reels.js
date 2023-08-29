/**
 * Code related to reels
 */
document.addEventListener('DOMContentLoaded', () => {
    const reels = [...document.querySelectorAll('.vd-reel')];
    const toggleOverflowClass = element => {
        element.classList.toggle('overflowing', element.scrollWidth > element.clientWidth);
    };

    for (const reel of reels) {
        if ('ResizeObserver' in window) {
            new ResizeObserver(entries => {
                toggleOverflowClass(entries[0].target);
            }).observe(reel);
        }

        if ('MutationObserver' in window) {
            new MutationObserver(entries => {
                toggleOverflowClass(entries[0].target);
            }).observe(reel, {childList: true});
        }
    }
});

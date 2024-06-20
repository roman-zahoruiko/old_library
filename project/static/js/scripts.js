document.addEventListener('DOMContentLoaded', function () {
    const rows = document.querySelectorAll('.bookloan-row');
    const now = new Date();

    rows.forEach(row => {
        const returnDate = new Date(row.getAttribute('data-return-date'));
        const oneWeekInMs = 7 * 24 * 60 * 60 * 1000;  // One week in ms
        const returnedCell = row.querySelector('.returned');
        const returned = returnedCell.textContent.trim() === 'True';

        if (!returned) {
            if (returnDate < now) {
                row.style.backgroundColor = '#ffcccc';
            } else if (returnDate - now <= oneWeekInMs) {
                row.style.backgroundColor = '#ffffcc';
            }
        }
    });
});

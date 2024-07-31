const searchForm = document.getElementById('search-form');
const searchResults = document.getElementById('search-results');

searchForm.addEventListener('submit', (e) => {
    e.preventDefault();
    const doctorName = document.getElementById('doctor-name').value;
    const specialization = document.getElementById('specialization').value;
    const location = document.getElementById('location').value;

    // Call API or database to fetch search results
    // For demo purposes, we'll just display a sample result
    const searchResult = `
      <h2>Search Results</h2>
        <ul>
            <li>Dr. amarjeet - Cardiology - New York</li>
            <li>Dr. kumar - Neurology - Los Angeles</li>
            <!-- Add more search results here -->
        </ul>
    `;
    searchResults.innerHTML = searchResult;
});
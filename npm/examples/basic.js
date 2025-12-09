/**
 * Basic Example - CSV to JSON Converter API
 *
 * This example demonstrates how to use the CSV to JSON Converter API.
 * Make sure to set your API key in the .env file or replace '[YOUR_API_KEY]' below.
 */

require('dotenv').config();
const csvtojsonAPI = require('../index.js');

// Initialize the API client
const api = new csvtojsonAPI({
    api_key: process.env.API_KEY || '[YOUR_API_KEY]'
});

// Example query
var query = {
  "csv": "name,age,city\nJohn Doe,30,New York\nJane Smith,25,Los Angeles",
  "delimiter": ",",
  "has_header": true
};

// Make the API request using callback
console.log('Making request to CSV to JSON Converter API...\n');

api.execute(query, function (error, data) {
    if (error) {
        console.error('Error occurred:');
        if (error.error) {
            console.error('Message:', error.error);
            console.error('Status:', error.status);
        } else {
            console.error(JSON.stringify(error, null, 2));
        }
        return;
    }

    console.log('Response:');
    console.log(JSON.stringify(data, null, 2));
});

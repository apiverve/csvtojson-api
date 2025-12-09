/**
 * CSV to JSON Converter API - Basic Usage Example
 *
 * This example demonstrates the basic usage of the CSV to JSON Converter API.
 * API Documentation: https://docs.apiverve.com/ref/csvtojson
 */

const API_KEY = process.env.APIVERVE_API_KEY || 'YOUR_API_KEY_HERE';
const API_URL = 'https://api.apiverve.com/v1/csvtojson';

/**
 * Make a POST request to the CSV to JSON Converter API
 */
async function callCSVtoJSONConverterAPI() {
  try {
    // Request body
    const requestBody &#x3D; {
    &quot;csv&quot;: &quot;name,age,city\nJohn Doe,30,New York\nJane Smith,25,Los Angeles&quot;,
    &quot;delimiter&quot;: &quot;,&quot;,
    &quot;has_header&quot;: true
};

    const response = await fetch(API_URL, {
      method: 'POST',
      headers: {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(requestBody)
    });

    // Check if response is successful
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();

    // Check API response status
    if (data.status === 'ok') {
      console.log('✓ Success!');
      console.log('Response data:', data.data);
      return data.data;
    } else {
      console.error('✗ API Error:', data.error || 'Unknown error');
      return null;
    }

  } catch (error) {
    console.error('✗ Request failed:', error.message);
    return null;
  }
}

// Run the example
callCSVtoJSONConverterAPI()
  .then(result => {
    if (result) {
      console.log('\n📊 Final Result:');
      console.log(JSON.stringify(result, null, 2));
    }
  });

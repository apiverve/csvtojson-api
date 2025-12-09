"""
CSV to JSON Converter API - Basic Usage Example

This example demonstrates the basic usage of the CSV to JSON Converter API.
API Documentation: https://docs.apiverve.com/ref/csvtojson
"""

import os
import requests
import json

API_KEY = os.getenv('APIVERVE_API_KEY', 'YOUR_API_KEY_HERE')
API_URL = 'https://api.apiverve.com/v1/csvtojson'

def call_csvtojson_api():
    """
    Make a POST request to the CSV to JSON Converter API
    """
    try:
        # Request body
        request_body &#x3D; {
    &#x27;csv&#x27;: &#x27;name,age,city\nJohn Doe,30,New York\nJane Smith,25,Los Angeles&#x27;,
    &#x27;delimiter&#x27;: &#x27;,&#x27;,
    &#x27;has_header&#x27;: true
}

        headers = {
            'x-api-key': API_KEY,
            'Content-Type': 'application/json'
        }

        response = requests.post(API_URL, headers=headers, json=request_body)

        # Raise exception for HTTP errors
        response.raise_for_status()

        data = response.json()

        # Check API response status
        if data.get('status') == 'ok':
            print('✓ Success!')
            print('Response data:', json.dumps(data['data'], indent=2))
            return data['data']
        else:
            print('✗ API Error:', data.get('error', 'Unknown error'))
            return None

    except requests.exceptions.RequestException as e:
        print(f'✗ Request failed: {e}')
        return None

if __name__ == '__main__':
    print('📤 Calling CSV to JSON Converter API...\n')

    result = call_csvtojson_api()

    if result:
        print('\n📊 Final Result:')
        print(json.dumps(result, indent=2))
    else:
        print('\n✗ API call failed')

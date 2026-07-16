# CSV to JSON Converter API - PHP Package

CSV to JSON Converter is a powerful tool for converting CSV data into JSON format. It supports custom delimiters, header detection, and handles quoted fields properly.

## Installation

Install via Composer:

```bash
composer require apiverve/csvtojson
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Csvtojson\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'csv' => 'name,age,city
John Doe,30,New York
Jane Smith,25,Los Angeles',
    'delimiter' => ',',
    'has_header' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Csvtojson\Client;
use APIVerve\Csvtojson\Exceptions\APIException;
use APIVerve\Csvtojson\Exceptions\ValidationException;

try {
    $response = $client->execute(['csv' => 'name,age,city
John Doe,30,New York
Jane Smith,25,Los Angeles', 'delimiter' => ',', 'has_header' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "row_count": 2,
    "column_count": 3,
    "columns": [
      "name",
      "age",
      "city"
    ],
    "inferredTypes": {
      "name": "string",
      "age": "integer",
      "city": "string"
    },
    "json": [
      {
        "name": "John Doe",
        "age": "30",
        "city": "New York"
      },
      {
        "name": "Jane Smith",
        "age": "25",
        "city": "Los Angeles"
      }
    ]
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/csvtojson?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/csvtojson?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/csvtojson?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).

# CSV to JSON Converter API - Dart/Flutter Client

CSV to JSON Converter parses raw CSV text into an array of JSON objects with column names and row counts. It handles comma, semicolon, tab, or pipe delimiters, with optional header row detection.

[![pub package](https://img.shields.io/pub/v/apiverve_csvtojson.svg)](https://pub.dev/packages/apiverve_csvtojson)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [CSV to JSON Converter API](https://apiverve.com/marketplace/csvtojson?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_csvtojson: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_csvtojson/apiverve_csvtojson.dart';

void main() async {
  final client = CsvtojsonClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'csv': 'name,age,city
John Doe,30,New York
Jane Smith,25,Los Angeles',
      'delimiter': ',',
      'has_header': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [CSV to JSON Converter API](https://apiverve.com/marketplace/csvtojson?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/csvtojson](https://docs.apiverve.com/ref/csvtojson?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)

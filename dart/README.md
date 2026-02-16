# CSV to JSON Converter API - Dart/Flutter Client

CSV to JSON Converter is a powerful tool for converting CSV data into JSON format. It supports custom delimiters, header detection, and handles quoted fields properly.

[![pub package](https://img.shields.io/pub/v/apiverve_csvtojson.svg)](https://pub.dev/packages/apiverve_csvtojson)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [CSV to JSON Converter API](https://apiverve.com/marketplace/csvtojson?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_csvtojson: ^1.1.14
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

- **API Home:** [CSV to JSON Converter API](https://apiverve.com/marketplace/csvtojson?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/csvtojson](https://docs.apiverve.com/ref/csvtojson?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)

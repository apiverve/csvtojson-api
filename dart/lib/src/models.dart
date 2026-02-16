/// Response models for the CSV to JSON Converter API.

/// API Response wrapper.
class CsvtojsonResponse {
  final String status;
  final dynamic error;
  final CsvtojsonData? data;

  CsvtojsonResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CsvtojsonResponse.fromJson(Map<String, dynamic> json) => CsvtojsonResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CsvtojsonData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the CSV to JSON Converter API.

class CsvtojsonData {
  int? rowCount;
  int? columnCount;
  List<String>? columns;
  List<CsvtojsonDataJsonItem>? json;

  CsvtojsonData({
    this.rowCount,
    this.columnCount,
    this.columns,
    this.json,
  });

  factory CsvtojsonData.fromJson(Map<String, dynamic> json) => CsvtojsonData(
      rowCount: json['row_count'],
      columnCount: json['column_count'],
      columns: (json['columns'] as List?)?.cast<String>(),
      json: (json['json'] as List?)?.map((e) => CsvtojsonDataJsonItem.fromJson(e)).toList(),
    );
}

class CsvtojsonDataJsonItem {
  String? name;
  String? age;
  String? city;

  CsvtojsonDataJsonItem({
    this.name,
    this.age,
    this.city,
  });

  factory CsvtojsonDataJsonItem.fromJson(Map<String, dynamic> json) => CsvtojsonDataJsonItem(
      name: json['name'],
      age: json['age'],
      city: json['city'],
    );
}

class CsvtojsonRequest {
  String csv;
  String? delimiter;
  bool? hasHeader;

  CsvtojsonRequest({
    required this.csv,
    this.delimiter,
    this.hasHeader,
  });

  Map<String, dynamic> toJson() => {
      'csv': csv,
      if (delimiter != null) 'delimiter': delimiter,
      if (hasHeader != null) 'has_header': hasHeader,
    };
}

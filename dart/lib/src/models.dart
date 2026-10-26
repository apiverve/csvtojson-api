/// Response models for the CSV to JSON Converter API.

/// API Response wrapper.
class CsvtojsonResponse {
  final String status;
  final dynamic error;
  final CsvtojsonData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CsvtojsonResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CsvtojsonResponse.fromJson(Map<String, dynamic> json) => CsvtojsonResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CsvtojsonData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the CSV to JSON Converter API.

class CsvtojsonData {
  num? rowCount;
  num? columnCount;
  List<String>? columns;
  CsvtojsonDataInferredtypes? inferredTypes;
  List<CsvtojsonDataJsonItem>? json;

  CsvtojsonData({
    this.rowCount,
    this.columnCount,
    this.columns,
    this.inferredTypes,
    this.json,
  });

  factory CsvtojsonData.fromJson(Map<String, dynamic> json) => CsvtojsonData(
      rowCount: json['row_count'],
      columnCount: json['column_count'],
      columns: (json['columns'] as List?)?.cast<String>(),
      inferredTypes: json['inferredTypes'] != null ? CsvtojsonDataInferredtypes.fromJson(json['inferredTypes']) : null,
      json: (json['json'] as List?)?.map((e) => CsvtojsonDataJsonItem.fromJson(e)).toList(),
    );
}

class CsvtojsonDataInferredtypes {
  String? name;
  String? age;
  String? city;

  CsvtojsonDataInferredtypes({
    this.name,
    this.age,
    this.city,
  });

  factory CsvtojsonDataInferredtypes.fromJson(Map<String, dynamic> json) => CsvtojsonDataInferredtypes(
      name: json['name'],
      age: json['age'],
      city: json['city'],
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

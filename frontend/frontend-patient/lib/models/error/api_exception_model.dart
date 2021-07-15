part of 'models_error_files.dart';

class APIException implements Exception {
  final int statusCode;
  final String message;

  APIException({@required this.statusCode, @required this.message});

  @override
  String toString() => message;
}

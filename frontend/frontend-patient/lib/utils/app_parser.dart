part of 'utils_files.dart';

class AppParser {
  AppParser._();

  static T parseClass<T>(JsonModel<T> serializer, Map<String, dynamic> data) =>
      serializer.fromJson(data);

  static Map<String, dynamic> toJsonClass<T>(JsonModel<T> serializer, T data) =>
      serializer.toJson(data);

  static List<T> parseListClass<T>(
          JsonModel<T> serializer, List<Map<String, dynamic>> data) =>
      data.map((e) => serializer.fromJson(e)).toList();

  static List<Map<String, dynamic>> toJsonListClass<T>(
          JsonModel<T> serializer, List<T> data) =>
      data.map((e) => serializer.toJson(e)).toList();

  static DateTime parseDateTime(dynamic data) {
    if (data == null) return DateTime.now();

    return DateTime.parse(data.toString());
  }

  static List<T> parseListPrimitiveClass<T>(List data) {
    if (data == null) data = [];

    return data.cast<T>();
  }
}

part of 'utils_files.dart';

class AppFunctions {
  AppFunctions._();

  static Future<T> getClassResponse<T>(
    Response response,
    JsonModel<T> serializer, {
    String property,
  }) async {
    final decodedData = json.decode(response.body);

    if (!AppFunctions.isSuccessfull(response.statusCode))
      throw new APIException(
          statusCode: response.statusCode, message: decodedData['message']);

    if (property == null) return AppParser.parseClass(serializer, decodedData);

    return AppParser.parseClass(serializer, decodedData[property]);
  }

  static Future<List<T>> getListClassResponse<T>(
    Response response,
    JsonModel<T> serializer, {
    String property,
  }) async {
    final decodedData = json.decode(response.body);

    if (!AppFunctions.isSuccessfull(response.statusCode))
      throw new APIException(
          statusCode: response.statusCode, message: decodedData['message']);

    if (property == null)
      return AppParser.parseListClass(serializer, decodedData);

    return AppParser.parseListClass(serializer, decodedData[property]);
  }

  static bool isSuccessfull(int statusCode) =>
      statusCode.toString().startsWith("2");

  static Map<String, String> buildJsonHeader(String token) => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': token
      };

  static Map<String, String> buildHeader(String token) =>
      {'Authorization': token};

  static void showSnackbarMessage(BuildContext context, String message) =>
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
}

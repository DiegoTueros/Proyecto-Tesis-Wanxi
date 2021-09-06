part of 'services_files.dart';

class AuthService {
  static final AuthService _instance = new AuthService._();
  factory AuthService() => _instance;
  AuthService._();

  final _baseURL = "http://192.168.1.2:4000/auth";

  Future<SigninResponse> signin(SigninRequest data) async {
    //mandar solo headers si el metodo solo es put post o patch
    final headers = AppFunctions.buildJsonHeader();
    final body =
        json.encode(AppParser.toJsonClass(SigninRequestDeserializer(), data));
    final response = await http.post(Uri.parse('$_baseURL/signin'),
        headers: headers, body: body);
    final signinResponse = await AppFunctions.getClassResponse(
        response, SigninResponseDeserializer());
    print(signinResponse.token);

    //return signinResponse;
  }

  signup(SignupRequest data) {}
}

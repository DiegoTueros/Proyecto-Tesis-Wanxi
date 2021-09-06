part of 'models_app_files.dart';

class SigninRequest {
  String email;
  String password;

  SigninRequest({this.email, this.password});
}

class SigninRequestDeserializer extends JsonModel<SigninRequest> {
  @override
  SigninRequest fromJson(Map<String, dynamic> data) {
    if (data == null) data = {};

    return SigninRequest(email: data['email'], password: data['password']);
  }

  @override
  Map<String, dynamic> toJson(SigninRequest data) => {
        "email": data.email,
        "password": data.password,
      };
}

class SigninResponse {
  String token;
  User user;

  SigninResponse({this.token, this.user});
}

class SigninResponseDeserializer extends JsonModel<SigninResponse> {
  @override
  SigninResponse fromJson(Map<String, dynamic> data) {
    if (data == null) data = {};

    return SigninResponse(
        token: data['token'],
        user: AppParser.parseClass(UserDeserializer(), data['user']));
  }

  @override
  Map<String, dynamic> toJson(SigninResponse data) => {
        "token": data.token,
        "user": AppParser.toJsonClass(UserDeserializer(), data.user),
      };
}

class SignupRequest {
  String email;
  String password;
  String firstname;
  String lastname;
  SignupRequest(this.email, this.password, this.firstname, this.lastname);
}

part of 'models_app_files.dart';

class User {
  String firstname;
  String lastname;
  String email;
  String password;

  User({this.email, this.password, this.firstname, this.lastname});
}

class UserDeserializer extends JsonModel<User> {
  @override
  User fromJson(Map<String, dynamic> data) {
    if (data == null) data = {};

    return User(
        email: data['email'],
        password: data['password'],
        firstname: data['firstname'],
        lastname: data['lastname']);
  }

  @override
  Map<String, dynamic> toJson(User data) => {
        "email": data.email,
        "password": data.password,
        "firstname": data.firstname,
        "lastname": data.lastname,
      };
}

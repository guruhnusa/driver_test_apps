import 'dart:convert';

class LoginRequestModel {
    String email;
    String password;

    LoginRequestModel({
        required this.email,
        required this.password,
    });

    factory LoginRequestModel.fromJson(String str) => LoginRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory LoginRequestModel.fromMap(Map<String, dynamic> json) => LoginRequestModel(
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toMap() => {
        "email": email,
        "password": password,
    };
}

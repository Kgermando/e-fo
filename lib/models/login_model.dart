import 'dart:convert';

import 'package:focad/models/user_model.dart';


LoginModel loginModelFromJson(String jwt) =>
    LoginModel.fromJson(json.decode(jwt));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.user,
    required this.jwt,
  });

  User? user;
  String jwt;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      LoginModel(user: User.fromJson(json["user"]), jwt: json["jwt"]);

  Map<String, dynamic> toJson() => {
        "user": user!.toJson(),
        "jwt": jwt,
      };
}


class User {
  final int? id;
  final String firstName;
  final String lastName;
  final String email;
  final String telephone;
  final String nameBusiness;
  final String province;
  final String typeAbonnement;
  final String? password;
  final String? passwordConfirm;
  final String? imagePath;

  const User({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.telephone,
    required this.nameBusiness,
    required this.province,
    required this.typeAbonnement,
    this.password,
    this.passwordConfirm,
    this.imagePath,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        telephone: json["telephone"],
        nameBusiness: json["nameBusiness"],
        province: json["province"],
        typeAbonnement: json["typeAbonnement"],
        // password: json["password"],
        // passwordConfirm: json["passwordConfirm"],
        imagePath: json['imagePath'],
    );
  }

    Map<String, dynamic> toJson() {
    return {
      "id": id,
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "telephone": telephone,
      "nameBusiness": nameBusiness,
      "province": province,
      "typeAbonnement": typeAbonnement,
      "password": password,
      "passwordConfirm": passwordConfirm,
      'imagePath': imagePath,
    };
  }
}

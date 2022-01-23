class SignUpModel {
  final List<String>? errors;
  final String? token;
  final UserModel? user;

  SignUpModel({this.errors, this.token, this.user});

  factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return SignUpModel(
      errors: json['errors'] != null
          ? (json['errors'] as List).map((e) => e as String).toList()
          : null,
      token: json['token'] == null ? null : json['token'] ,
      user: json['user'] != null ? UserModel.fromJson(json['user']) : null,
    );
  }
}

class UserModel {
  final String? id;
  final String? email;
  final String? firstName;
  final String? lastName;

  UserModel({this.id, this.email, this.firstName, this.lastName});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] == null ? "" : json['id'] ,
      email: json['email']  == null ? "" : json['email'] ,
      firstName: json['firstName'] == null ? "" : json['firstName'] ,
      lastName: json['lastName'] == null ? "" : json['lastName'] ,
    );
  }
}

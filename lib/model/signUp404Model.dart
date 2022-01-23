class SignUp404Model {
  final String? type;
  final String? title;
  final num? status;

  const SignUp404Model({
    this.type,
    this.title,
    this.status,
  });

  factory SignUp404Model.fromJson(Map<String, dynamic> json) {
    return SignUp404Model(
      type: json['type'] == null ? "" : json['type'],
      title: json['title'] == null ? "" : json['title'],
      status: json['status'] == null ? null : json['status'],
    );
  }
}

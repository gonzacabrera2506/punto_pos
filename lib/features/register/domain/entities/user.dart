class User {
  final String id;
  final String? name;
  final String email;
  final String? password;
  // final String token;

  User({
    required this.id,
    this.name,
    required this.email,
    this.password,
    //required this.token,
  });
}

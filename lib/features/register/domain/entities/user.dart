class User {
  final String? id;
  final String? name;
  final String email;
  final String password;
  // final String token;

  User({
    this.id,
    this.name,
    required this.email,
    required this.password,
    //required this.token,
  });
}

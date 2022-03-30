class User {
  int id;
  String name;
  String username;
  String email;

  User(
      {required this.id,
      required this.name,
      required this.username,
      required this.email});

  static User fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: (json['name'] == null || json['name'] == ''
          ? 'Untitled'
          : json['name']),
      username: json['username'],
      email: json['email'],
    );
  }
}

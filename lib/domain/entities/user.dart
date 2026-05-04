class User {
  final String id;
  final String email;
  final String? username;
  final String? avatarUrl;

  User({
    required this.id,
    required this.email,
    this.username,
    this.avatarUrl,
  });

  User copyWith({String? email, String? username, String? avatarUrl}) {
    return User(
      id: id,
      email: email ?? this.email,
      username: username ?? this.username,
      avatarUrl: avatarUrl ?? this.avatarUrl,
    );
  }
}

class user {
  String? id;
  String? email;
  String? pwd;
  String? fullname;

  user({
    this.id,
    this.email,
    this.pwd,
    this.fullname,
  });

  factory user.fromJson(dynamic json) {
    return user(
      id: json['_id'] as String?,
      email: json['email'] as String?,
      pwd: json['password'] as String?,
      fullname: json['FullName'] as String?,
    );
  }
}

class userRes {
  final bool success;
  final String token;
  final Map userattribute;

  userRes(
      {required this.success,
      required this.token,
      required this.userattribute});

  factory userRes.fromJson(json) {
    return userRes(
        success: json['success'],
        token: json['token'],
        userattribute:json['user']
    );
  }
}




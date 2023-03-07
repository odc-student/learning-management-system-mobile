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
      fullname: json['fullName'] as String?,
    );
  }
}

class userRes {
  final bool success;
  final String token;
  final Map userattribute;

  userRes({required this.success,
    required this.token,
    required this.userattribute});

  factory userRes.fromJson(json) {
    return userRes(
        success: json['success'],
        token: json['token'],
        userattribute: json['user']
    );
  }
}

class userSucc {
  final bool success;
  final Map userattribute;

  userSucc({
    required this.success,
    required this.userattribute,
  });

  factory userSucc.fromJson(json){
    return userSucc(success: json['success'],
        userattribute:json['user']
    );

  }
}
class alluserSucc {
  final bool success;
  final List<user> userattribute;

  alluserSucc({
    required this.success,
    required this.userattribute,
  });

  factory alluserSucc.fromJson(json){
    return alluserSucc(success: json['success'],
        userattribute:List<user>.from((json['user'] as List<dynamic>)
            .map((e) => user.fromJson(e))).toList()

    );

  }
}




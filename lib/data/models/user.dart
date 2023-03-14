class user {
  String? id;
  String? email;
  String? pwd;
  String? fullName;

  user({
    this.id,
    this.email,
    this.pwd,
    this.fullName,
  });

  factory user.fromJson(dynamic json) {
    return user(
      id: json['_id'] as String?,
      email: json['email'] as String?,
      pwd: json['password'] as String?,
      fullName: json['fullName'] as String?,
    );
  }
}

// get all users
class allUserSuccess {
  final bool success;
  final List<user> userattribute;

  allUserSuccess({
    required this.success,
    required this.userattribute,
  });

  factory allUserSuccess.fromJson(json) {
    return allUserSuccess(
        success: json['success'],
        userattribute: List<user>.from(
                (json['user'] as List<dynamic>).map((e) => user.fromJson(e)))
            .toList());
  }
}

// login user Data
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
        userattribute: json['user']);
  }
}

// curent user Data
class userSucc {
  final bool success;
  final Map userattribute;

  userSucc({
    required this.success,
    required this.userattribute,
  });

  factory userSucc.fromJson(json) {
    return userSucc(success: json['success'], userattribute: json['user']);
  }
}

// get user by id
class userData {
  final bool success;
  final Map attribute;
  String? id;
  String? email;
  String? fullname;
  String? dateB;
  String? phoneN;

  userData(
      {required this.success,
      required this.attribute,
      this.id,
      this.email,
      this.fullname,
      this.dateB,
      this.phoneN});

  factory userData.fromJson(json) {
    return userData(
      success: json['success'],
      id: json['data']['id'],
      email: json['data']['email'],
      fullname: json['data']['fullName'],
      dateB: json['data']['dateOfBirth'],
      phoneN: json['data']['phoneNumber'],
      attribute: json['data'],
    );
  }
}

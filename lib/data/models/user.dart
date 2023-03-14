class User {
  String? id;
  String? email;
  String? pwd;
  String? fullName;

  User({
    this.id,
    this.email,
    this.pwd,
    this.fullName,
  });

  factory User.fromJson(dynamic json) {
    return User(
      id: json['_id'] as String?,
      email: json['email'] as String?,
      pwd: json['password'] as String?,
      fullName: json['fullName'] as String?,
    );
  }
}

// get all users
class AllUserSuccess {
  final bool success;
  final List<User> userattribute;

  AllUserSuccess({
    required this.success,
    required this.userattribute,
  });

  factory AllUserSuccess.fromJson(json) {
    return AllUserSuccess(
        success: json['success'],
        userattribute: List<User>.from(
                (json['user'] as List<dynamic>).map((e) => User.fromJson(e)))
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
class UserSuccess {
  final bool success;
  final Map userattribute;

  UserSuccess({
    required this.success,
    required this.userattribute,
  });

  factory UserSuccess.fromJson(json) {
    return UserSuccess(success: json['success'], userattribute: json['user']);
  }
}

// get user by id
class UserData {
  final bool success;
  final Map attribute;
  String? id;
  String? email;
  String? fullName;
  String? dateBerth;
  String? phoneN;

  UserData(
      {required this.success,
      required this.attribute,
      this.id,
      this.email,
      this.fullName,
      this.dateBerth,
      this.phoneN});

  factory UserData.fromJson(json) {
    return UserData(
      success: json['success'],
      id: json['data']['id'],
      email: json['data']['email'],
      fullName: json['data']['fullName'],
      dateBerth: json['data']['dateOfBirth'],
      phoneN: json['data']['phoneNumber'],
      attribute: json['data'],
    );
  }
}

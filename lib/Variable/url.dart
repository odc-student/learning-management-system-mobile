part of 'package:osltestcubit/variable/imports.dart';

//ODC-OF: 192.168.1.163   ODC-GUST: 10.54.234.78  Prof: 192.168.4.53
const apiUrl = "http://10.54.234.78:5000/v1/api";

//URL
//Course
const urlCourse = "$apiUrl/course";

const urlSprint = "$apiUrl/sprint";
const urlSprints = "$apiUrl/sprints";

const apiAuthUrl = "$apiUrl/auth";

const urlLogin = "$apiAuthUrl/login";
const urlSignup = "$apiAuthUrl/signup";
const urlForgotPassword = "$apiAuthUrl/forget-password";
const urlRestPassword = "$apiAuthUrl/reset-password";

const apiUser = "$apiUrl/users";
const urlUser = "$apiUrl/user";

const urlCurrentUser = "$apiUser/me";

const urlAccount = "$apiUrl/account";

String urlDisable(String id) {
  String urlDisableUser = "$urlAccount/$id/disable";
  return urlDisableUser;
}

String urlEnable(String token) {
  String urlEnableUser = "$urlAccount/$token/enable";
  return urlEnableUser;
}

const urlQuiz = "$apiUrl/quiz";

const urlReclamation = "$apiUrl/reclamation";

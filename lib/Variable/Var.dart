part of 'package:osltestcubit/variable/imports.dart';

//ODC-OF: 192.168.1.163   ODC-GUST: 10.54.234.78  Prof: 192.168.4.53
const apiUrl = "http://10.54.234.78:5000/v1/api";

//User Data

var token;
var email;
var fullname;
var id ;
var dateB;
var PhoneN;

// var
var index=2;//Todo: change me to 0

//Colors
const odc =Color(0xFFFF7900);

const dodc =Colors.deepOrange;
const black = Colors.black;
const white =Colors.white;
const red =Color(0xFFFF0000);


//URL
  //Course
const urlCourse="$apiUrl/course";


const urlSprint="$apiUrl/sprint";


const apiAuthUrl = "$apiUrl/auth";

const urlLogin="$apiAuthUrl/login";
const urlSignup="$apiAuthUrl/signup";
const urlForgetpwd ="$apiAuthUrl/forget-password";
const urlRestpwd ="$apiAuthUrl/reset-password";


const apiUser ="$apiUrl/users";

const urlCurrentUser="$apiUser/me";


const urlAccount="$apiUrl/account";
String urlDisable(String id){
  String urlDisableUser="$urlAccount/$id/disable";
  return urlDisableUser;
}
String urlEnable(String token){
  String urlEnableUser="$urlAccount/$token/enable";
  return urlEnableUser;
}

const urlQuiz="$apiUrl/quiz";

const urlReclamation="$apiUrl/reclamation";









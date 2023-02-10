import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:osl/API/ImagePickerbase64.dart';
import 'package:osl/API/mongodb.dart';
import 'package:osl/Widget/button.dart';
import 'package:osl/Widget/textfaild.dart';

class FormateurSignup extends StatefulWidget {
  const FormateurSignup({Key? key}) : super(key: key);

  @override
  State<FormateurSignup> createState() => _FormateurSignupState();
}

class _FormateurSignupState extends State<FormateurSignup> {
  final TextEditingController _firstnameTextController =
  TextEditingController();
  final TextEditingController _lastnameTextController = TextEditingController();
  final TextEditingController _userEmailTextController =
  TextEditingController();
  final TextEditingController _phonenumberTextController =
  TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _confirmpasswordTextController =
  TextEditingController();
  final TextEditingController _governorateTextController =
  TextEditingController();
  final TextEditingController _municipalityTextController =
  TextEditingController();
  final TextEditingController _ageTextController = TextEditingController();
  final TextEditingController _genderTextController = TextEditingController();
  final TextEditingController _dateOfBirthTextController =
  TextEditingController();
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.deepOrange;
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "SignUp Formateur ",
            style: TextStyle(color: Colors.white),
          ),
          Divider(),
          getTextField(
              "First Name", Icons.person, false, _firstnameTextController),
          getTextField(
              "Last Name", Icons.person, false, _lastnameTextController),
          getTextField("Entre Email", Icons.mail_outline_rounded, false,
              _userEmailTextController),
          getTextField("Date Of Birth", Icons.event_rounded, false,
              _phonenumberTextController),
          getTextField("Phone Number", Icons.phone_android, false,
              _dateOfBirthTextController),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Base64.Encod("email", _userEmailTextController.text);
                  },
                  child: Text(
                    "upload",
                    style: TextStyle(color: Colors.white),
                  ),style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states){
                  if(states.contains(MaterialState.pressed)) {
                    return Colors.deepOrange;
                  }
                  return Colors.deepOrange;
                }), shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ))
                ),),
              ],
            ),
          ),
          getTextField("Governorate", FontAwesomeIcons.locationPin, false,
              _governorateTextController),
          getTextField("Municipality", FontAwesomeIcons.placeOfWorship, false,
              _municipalityTextController),
          getTextField("Age", Icons.date_range, false, _ageTextController),
          getTextField(
              "gender", Icons.transgender, false, _genderTextController),
          getTextField("Password", Icons.lock, true, _passwordTextController),
          getTextField("Confirm Password", Icons.lock, true,
              _confirmpasswordTextController),
          Row(
            children: [
              Checkbox(
                  value: isChecked,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  }),
              Text(
                "I accept the ",
                style: TextStyle(color: Colors.white),
              ),
              InkWell(
                child: Text(
                  "terms and Condition.",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline),
                ),
                onTap: () {},
              )
            ],
          ),
          SigninupButton(context, false, () async {
            var emailnumber = await MongoDatabase.EmailExist(
                "email", _userEmailTextController.text);
            print(emailnumber);
            if (emailnumber == 0) {


              if (_passwordTextController.text == "") {
                var snackBar =
                SnackBar(content: Text('Possword TextFaild is empty'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);}
              else if (_firstnameTextController.text == "") {
                var snackBar =
                SnackBar(content: Text('First Name TextFaild is empty'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);}
              else if(_lastnameTextController.text==""){
                var snackBar =
                SnackBar(content: Text('Last Name TextFaild is empty'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);}

              else if (_passwordTextController.text ==
                  _confirmpasswordTextController.text) {
                var snackBar = SnackBar(
                    content: Text(
                        "Possword and Confirm Posswrod don't match"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }else{
                await MongoDatabase.Create(
                    _firstnameTextController.text,
                    _lastnameTextController.text,
                    _userEmailTextController.text,
                    _phonenumberTextController.text,
                    _passwordTextController.text);
                await MongoDatabase.Update(
                    "email", _userEmailTextController.text, "is_formateur", "");
              }



            } else {
              var snackBar = SnackBar(content: Text('Email Existe or email field is empty'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          })
        ],
      ),
    );
  }
}

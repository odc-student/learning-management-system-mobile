import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:osl/API/mongodb.dart';
import 'package:osl/Widget/button.dart';
import 'package:osl/Widget/textfaild.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _firstnameTextController =
  TextEditingController();
  final TextEditingController _lastnameTextController = TextEditingController();
  final TextEditingController _userEmailTextController =
  TextEditingController();
  final TextEditingController _phonenumberTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _confirmpasswordTextController = TextEditingController();
  final TextEditingController _governorateTextController = TextEditingController();
  final TextEditingController _municipalityTextController = TextEditingController();
  final TextEditingController _ageTextController = TextEditingController();
  final TextEditingController _genderTextController = TextEditingController();
  final TextEditingController _dateOfBirthTextController = TextEditingController();
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
    return Container(child: Column(
      children: [
        Text("SignUp Now",style: TextStyle(color: Colors.white),),
        Divider(),
        getTextField("First Name", Icons.person, false,
            _firstnameTextController),
        getTextField(
            "Last Name", Icons.person, false, _lastnameTextController),
        getTextField("Entre Email", Icons.mail_outline_rounded, false,
            _userEmailTextController),
        getTextField("Date Of Birth", Icons.event_rounded, false,
            _phonenumberTextController),
        getTextField("Phone Number", Icons.phone_android, false,
            _dateOfBirthTextController),
        getTextField("Governorate", FontAwesomeIcons.locationPin, false,
            _governorateTextController),
        getTextField("Municipality", FontAwesomeIcons.placeOfWorship, false,
            _municipalityTextController),
        getTextField("Age", Icons.date_range, false,
            _ageTextController),
        getTextField("gender", Icons.transgender, false,
            _genderTextController),
        getTextField(
            "Password", Icons.lock, true, _passwordTextController),
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
              onTap: () { },
            )
          ],
        ),
        SigninupButton(context, false, ()async{ await MongoDatabase.Create(_firstnameTextController.text, _lastnameTextController.text, _userEmailTextController.text, _phonenumberTextController.text, "Apprenant", _passwordTextController.text);})
      ],
    ),);
  }
}

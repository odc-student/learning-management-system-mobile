import 'package:flutter/material.dart';
import 'package:osl/API/mongodb.dart';
import 'package:osl/Widget/button.dart';
import 'package:osl/Widget/textfaild.dart';

class authpage extends StatefulWidget {
  const authpage({Key? key}) : super(key: key);

  @override
  State<authpage> createState() => _authpageState();
}

class _authpageState extends State<authpage> {
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
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset("assets/images/applogo.png",width: 50,),
            SizedBox(width: 10,),
            Text(
              "OSL",
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.message_outlined),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                Text("SignUp Now",style: TextStyle(color: Colors.white),),
                Divider(),
                getTextField("First Name", Icons.person, false,
                    _firstnameTextController),
                getTextField(
                    "Last Name", Icons.person, false, _lastnameTextController),
                getTextField("Entre Email", Icons.mail_outline_rounded, false,
                    _userEmailTextController),
                getTextField("Phone Number", Icons.phone_android, false,
                    _phonenumberTextController),
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
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Powered by :",style: TextStyle(color: Colors.white),),
                Image.asset("assets/images/logo.png",width: 90,)
              ],
            )
          ],
        ),
      ),
    );
  }
}

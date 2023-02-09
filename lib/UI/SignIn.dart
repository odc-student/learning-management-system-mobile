import 'package:flutter/material.dart';
import 'package:osl/API/mongodb.dart';
import 'package:osl/Widget/button.dart';
import 'package:osl/Widget/textfaild.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _userEmailTextController =
      TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  bool isRemambred = false;


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
            "SignIn",
            style: TextStyle(color: Colors.white),
          ),
          Divider(),
          getTextField("Entre Email", Icons.mail_outline_rounded, false,
              _userEmailTextController),
          getTextField("Password", Icons.lock, true, _passwordTextController),
          Row(
            children: [
              Checkbox(
                  value: isRemambred,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  onChanged: (bool? value) {
                    setState(() {
                      isRemambred = value!;
                    });
                  }),
              Text(
                "Remmaber Me",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          SigninupButton(context, true, () async {
            var pwd = await MongoDatabase.Get("email", _userEmailTextController.text);
            print(pwd);

            if (_userEmailTextController.text == "") {
              var snackBar = SnackBar(content: Text('Email TextFaild is empty'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              if(_passwordTextController.text==""){
                var snackBar = SnackBar(content: Text('Possword TextFaild is empty'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);

              if (_passwordTextController.text==pwd) {
                var snackBar = SnackBar(content: Text('Incorrect Possword'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);

              }}
            }
          })
        ],
      ),
    );
  }

}
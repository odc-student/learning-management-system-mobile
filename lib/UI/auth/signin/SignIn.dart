part of 'package:osltestcubit/variable/imports.dart';

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
    return Color(0xFFFF7900);
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
            if (_userEmailTextController.text.isEmpty) {
              var snackBar =
                  SnackBar(content: Text('Email TextFaild is empty'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              if (_passwordTextController.text.isEmpty) {
                var snackBar =
                    SnackBar(content: Text('Possword TextFaild is empty'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            } else {
              context.read<SigninCubit>().Login(
                  _userEmailTextController.text, _passwordTextController.text);
            }
          })
        ],
      ),
    );
  }
}

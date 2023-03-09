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
  bool isRemembered = false;

  Color _getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return odc;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "SignIn",
            style: TextStyle(color: white),
          ),
          Divider(),
          getTextField("Entre Email", Icons.mail_outline_rounded, false,
              _userEmailTextController),
          getTextField("Password", Icons.lock, true, _passwordTextController),
          Row(
            children: [
              Checkbox(
                  value: isRemembered,
                  fillColor: MaterialStateProperty.resolveWith(_getColor),
                  onChanged: (bool? value) {
                    setState(() {
                      isRemembered = value!;
                    });
                  }),
              Text(
                "Remember Me",
                style: TextStyle(color: white),
              ),
            ],
          ),
          customButton(context, true, () async {
            if (_userEmailTextController.text.isEmpty) {
              var snackBar =
                  SnackBar(content: Text('Email is empty'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              if (_passwordTextController.text.isEmpty) {
                var snackBar =
                    SnackBar(content: Text('Password is empty'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            } else {
              context.read<SignInCubit>().login(
                  _userEmailTextController.text, _passwordTextController.text);
            }
          })
        ],
      ),
    );
  }
}

part of 'package:osltestcubit/variable/imports.dart';

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
    return Color(0xFFFF7900);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "SignUp Now",
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
                    //Todo: fix BAse64 code in there folder
                    //  Base64.Encod("email", _userEmailTextController.text);
                  },
                  child: Text(
                    "upload",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Color(0xFFFF7900);
                        }
                        return Color(0xFFFF7900);
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ),
              ],
            ),
          ),
          SigninupButton(context, false, () {
            if (_passwordTextController.text == "") {
              var snackBar =
                  SnackBar(content: Text('Possword TextFaild is empty'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } else if (_firstnameTextController.text == "") {
              var snackBar =
                  SnackBar(content: Text('First Name TextFaild is empty'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } else if (_lastnameTextController.text == "") {
              var snackBar =
                  SnackBar(content: Text('Last Name TextFaild is empty'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } else {
              context.read<SignupCubit>().Signup(
                  '${_firstnameTextController.text}+${_lastnameTextController.text}',
                  _userEmailTextController.text,
                  _dateOfBirthTextController.text,
                  '_passwordTextController.text',
                  "not active");
            }
          })
        ],
      ),
    );
  }
}

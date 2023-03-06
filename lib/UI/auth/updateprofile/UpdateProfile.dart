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

          Divider(),
          getTextField(
             fullname.toString().isEmpty?"Full Name":fullname, Icons.person, false, _firstnameTextController),
          getTextField(email.toString().isEmpty?"Email":email, Icons.mail_outline_rounded, false,
              _userEmailTextController),
          getTextField(dateB.toString().isEmpty?"Date of Birth":dateB, Icons.event_rounded, false,
              _dateOfBirthTextController),
          getTextField(PhoneN.toString().isEmpty?"Phone Number":PhoneN, Icons.phone_android, false,
              _phonenumberTextController),
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
             if (_firstnameTextController.text.isNotEmpty) {
               context.read<UpdateUserDataCubit>().UpdateUser(id, 'fullName', _firstnameTextController.text);
              var snackBar =
                  SnackBar(content: Text("full name updated "));snackBar;
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } if(_userEmailTextController.text.toString().isNotEmpty) {
               context.read<UpdateUserDataCubit>().UpdateUser(id, 'email', _userEmailTextController.text);
               var snackBar =
               SnackBar(content: Text("email updated "));snackBar;
             }if(_dateOfBirthTextController.text.toString().isNotEmpty) {
               context.read<UpdateUserDataCubit>().UpdateUser(id, 'dateOfBirth', _dateOfBirthTextController.text);
               var snackBar =
               SnackBar(content: Text("Date Of Birth updated "));
               snackBar;
             }if(_phonenumberTextController.text.toString().isNotEmpty) {
               context.read<UpdateUserDataCubit>().UpdateUser(id, 'phoneNumber', _phonenumberTextController.text);
               var snackBar =
               SnackBar(content: Text("Date Of Birth updated "));
               snackBar;
             }
          })
        ],
      ),
    );
  }
}

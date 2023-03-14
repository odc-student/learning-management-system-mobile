part of 'package:osltestcubit/variable/imports.dart';

class Signup extends StatefulWidget {
  const Signup(
      {Key? key,
      required this.email,
      required this.fullName,
      required this.dateB,
      required this.phoneN})
      : super(key: key);
  final String email;
  final String fullName;
  final String dateB;
  final String phoneN;

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _firstnameTextController =
      TextEditingController();
  final TextEditingController _userEmailTextController =
      TextEditingController();
  final TextEditingController _phoneNumberTextController =
      TextEditingController();
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
    return odc;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Divider(),
          getTextField(
              widget.fullName.toString().isEmpty
                  ? "Full Name"
                  : widget.fullName,
              Icons.person,
              false,
              _firstnameTextController),
          getTextField(widget.email.toString().isEmpty ? "Email" : widget.email,
              Icons.mail_outline_rounded, false, _userEmailTextController),
          getTextField(
              widget.dateB.toString().isEmpty ? "Date of Birth" : widget.dateB,
              Icons.event_rounded,
              false,
              _dateOfBirthTextController),
          getTextField(
              widget.phoneN.toString().isEmpty ? "Phone Number" : widget.phoneN,
              Icons.phone_android,
              false,
              _phoneNumberTextController),
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
                    style: TextStyle(color: white),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        return odc;
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ),
              ],
            ),
          ),
          customButton(context, false, () {
            if (_firstnameTextController.text.isNotEmpty) {
              context
                  .read<UpdateUserDataCubit>()
                  .updateUser(id, 'fullName', _firstnameTextController.text);
              var snackBar = SnackBar(content: Text("full name updated "));
              snackBar;
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
            if (_userEmailTextController.text.toString().isNotEmpty) {
              context
                  .read<UpdateUserDataCubit>()
                  .updateUser(id, 'email', _userEmailTextController.text);
              var snackBar = SnackBar(content: Text("email updated "));
              snackBar;
            }
            if (_dateOfBirthTextController.text.toString().isNotEmpty) {
              context.read<UpdateUserDataCubit>().updateUser(
                  id, 'dateOfBirth', _dateOfBirthTextController.text);
              var snackBar = SnackBar(content: Text("Date Of Birth updated "));
              snackBar;
            }
            if (_phoneNumberTextController.text.toString().isNotEmpty) {
              context.read<UpdateUserDataCubit>().updateUser(
                  id, 'phoneNumber', _phoneNumberTextController.text);
              var snackBar = SnackBar(content: Text("Date Of Birth updated "));
              snackBar;
            }
          })
        ],
      ),
    );
  }
}

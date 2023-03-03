
part of 'package:osltestcubit/Variable/imports.dart';

Widget getTextField(String text, IconData icon, bool isPasswordtype,
    TextEditingController controller){

  return TextField(
    controller: controller,
    obscureText: isPasswordtype,
    enableSuggestions:!isPasswordtype,
    autocorrect: !isPasswordtype,
    cursorColor: Color(0xFFFF7900),
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(border:InputBorder.none, prefixIcon: Icon(icon, color: Color(0xFFFF7900),),
      labelText: text,
      labelStyle: TextStyle( color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.grey.withOpacity(0.0),
    ),
    keyboardType: isPasswordtype ? TextInputType.visiblePassword:TextInputType.emailAddress,
  );
}
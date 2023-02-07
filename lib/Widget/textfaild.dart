import 'package:flutter/material.dart';

TextField getTextField(String text, IconData icon, bool isPasswordtype,
    TextEditingController controller){

  return TextField(
    controller: controller,
    obscureText: isPasswordtype,
    enableSuggestions:!isPasswordtype,
    autocorrect: !isPasswordtype,
    cursorColor: Colors.deepOrange,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(prefixIcon: Icon(icon, color: Colors.deepOrange,),
      labelText: text,
      labelStyle: TextStyle( color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.grey.withOpacity(0.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 0,style:BorderStyle.solid ,color: Color(0xFFFFFFFF))),
    ),
    keyboardType: isPasswordtype ? TextInputType.visiblePassword:TextInputType.emailAddress,
  );
}
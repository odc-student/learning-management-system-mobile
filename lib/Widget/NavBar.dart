import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:osl/API/mongodb.dart';
import 'package:osl/Const/Var.dart';

class NavBar extends StatelessWidget {
  const NavBar(
      {Key? key,
      required this.photo,
      required this.is_admin,
      required this.is_formateur,
      required this.is_user})
      : super(key: key);
  final photo;
  final bool is_admin;
  final bool is_formateur;
  final bool is_user;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(fullName),
            accountEmail: Text(email),
            currentAccountPicture: photo == null
                ? null
                : CircleAvatar(
                    child: ClipOval(
                      child: Image.memory(
                        base64Decode(photo),
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
            decoration: BoxDecoration(color: Colors.black),
          ),
          is_admin
              ? Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading:const Icon(Icons.home),
                        title: Text('About'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        selected: true,
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.menu_book_outlined),
                        title: Text('Favorites'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.contact_support_outlined),
                        title: Text('Contact'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Setting'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.person_add_alt_1_outlined),
                        title: Text('Add Formateur'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.person_remove_alt_1_outlined),
                        title: Text('Remove User'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Logout'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              : Container(),
          is_formateur
              ? Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text('About'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        selected: true,
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.menu_book_outlined),
                        title: Text('Course'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.contact_support_outlined),
                        title: Text('Contact'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Setting'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Logout'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              : Container(),
          is_user
              ? Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text('About'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        selected: true,
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.menu_book_outlined),
                        title: Text('Favorites'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Setting'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Logout'),
                        textColor: Colors.white,
                        selectedColor: Color(0xFFFF7900),
                        iconColor: Color(0xFFFF7900),
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              : Container(),
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListTile(
                title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Powered by :",
                      style: TextStyle(color: Colors.white),
                    ),
                    Image.asset(
                      "assets/images/logo.png",
                      width: 90,
                    )
                  ],
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}

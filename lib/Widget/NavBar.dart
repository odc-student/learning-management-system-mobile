import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:osl/API/mongodb.dart';
import 'package:osl/Const/Var.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key,required this.photo}) : super(key: key);
final photo;
  @override


  Widget build(BuildContext context) {
    return Drawer(backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName:Text(fullName), accountEmail: Text(email),
            currentAccountPicture: photo==null?null:CircleAvatar(
              child: ClipOval(
                child: Image.memory(base64Decode(photo),
                width: 90,
                height: 90,
                fit: BoxFit.cover,),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('About'),
            textColor: Colors.white,
            selectedColor: Colors.deepOrange,
            iconColor: Colors.deepOrange,
            selected: true,
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.menu_book_outlined),
            title: Text('Favorites'),
            textColor: Colors.white,
            selectedColor: Colors.deepOrange,
            iconColor: Colors.deepOrange,
            onTap: (){},
          ),

          ListTile(
            leading: Icon(Icons.contact_support_outlined),
            title: Text('Contact'),
            textColor: Colors.white,
            selectedColor: Colors.deepOrange,
            iconColor: Colors.deepOrange,
            onTap: (){},
          ),

          Container(
            height: MediaQuery.of(context).size.height,
            child: ListTile(
              title: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Powered by :",style: TextStyle(color: Colors.white),),
                  Image.asset("assets/images/logo.png",width: 90,)],),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}

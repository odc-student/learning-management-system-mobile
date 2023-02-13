import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:osl/API/mongodb.dart';
import 'package:osl/Const/Var.dart';
import 'package:osl/Widget/NavBar.dart';

class FormateurScreen extends StatefulWidget {
  const FormateurScreen({Key? key}) : super(key: key);

  @override
  State<FormateurScreen> createState() => _FormateurScreenState();
}

class _FormateurScreenState extends State<FormateurScreen> {
  var photo;
  late Future<bool> fetchedPhoto;

  Future<bool> Photo() async {
    photo = await MongoDatabase.GetImage("email", "labidimahdi855@gmail.com");

    setState(() {});
    return true;
  }

  @override
  void initState() {
    fetchedPhoto = Photo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(
        photo: photo, is_formateur: true, is_admin: false, is_user: false,
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset(
              "assets/images/applogo.png",
              width: 50,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "OSL",
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            FutureBuilder(
              future: fetchedPhoto,
              builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                if (snapshot.hasData) {
                  return CircleAvatar(
                    child: ClipOval(
                      child: Image.memory(
                        base64Decode(photo),
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                } else {
                  return Text("");
                }
              },
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.message_outlined),
          ],
        ),
      ),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:osl/Const/Var.dart';

class MongoDatabase{
  static connect() async{
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
  }
  static Create(String firstname,lastname,email,phonenumber,role,password) async{
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var collection = db.collection(COLLECTION_NAME);
    await collection.insertOne({
      "email":email,
      "password":password,
      "confirmationCode":"",
      "resetPasswordToken": "",
      "resetPasswordExpires": "",
      "fullName": firstname+" "+lastname,
      "photo": "",
      "governorate": "",
      "municipality": "",
      "age": "",
      "gender": "",
      "dateOfBirth": "",
      "phoneNumber":phonenumber,
      "Role":role,
      "listCouers": []


    });

  }
  static Update(String fieldName1,value1,fieldName2,value2)async{
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var collection = db.collection(COLLECTION_NAME);
    await collection.update(where.eq(fieldName1, value1),modify.set(fieldName2, value2));
  }
  static Delete(String fieldName,value)async{
    var db = await Db.create(MONGO_URL);
    var collection = db.collection(COLLECTION_NAME);
    await collection.deleteOne({fieldName: value});
  }

  // Get Password
  static Get(String fieldName,value)async{
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var collection = db.collection(COLLECTION_NAME);
    var employ = await collection.find(where.match(fieldName, value).excludeFields([

    ]))
        .toList();
    final  iterableMap = employ.whereType<Map>().first;
return iterableMap["password"].toString();
  }
// Get Image
  static GetImage(String fieldName,value)async{
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var collection = db.collection(COLLECTION_NAME);
    var employ = await collection.find(where.match(fieldName, value).excludeFields([

    ]))
        .toList();
    final  iterableMap = employ.whereType<Map>().first;
    return iterableMap["photo"].toString();
  }
// Get User info
static GetUser(String fieldName,value, info)async{
  var db = await Db.create(MONGO_URL);
  await db.open();
  inspect(db);
  var collection = db.collection(COLLECTION_NAME);
  var employ = await collection.find(where.match(fieldName, value).excludeFields([

  ]))
      .toList();
  final  iterableMap = employ.whereType<Map>().first;
  return iterableMap[info].toString();
}

}
import 'dart:developer';

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
    var collection = db.collection(COLLECTION_NAME);
    await collection.insertOne({
      "First Name": firstname,
      "Last Name": lastname,
      "Email":email,
      "Phone Number":phonenumber,
      "Role":role,
      "Password":password,
    });
  }
  static Update(String fieldName1,value1,fieldName2,value2)async{
    var db = await Db.create(MONGO_URL);
    var collection = db.collection(COLLECTION_NAME);
    await collection.update(where.eq(fieldName1, value1),modify.set(fieldName2, value2));
  }
  static Delete(String fieldName,value)async{
    var db = await Db.create(MONGO_URL);
    var collection = db.collection(COLLECTION_NAME);
    await collection.deleteOne({fieldName: value});
  }
}
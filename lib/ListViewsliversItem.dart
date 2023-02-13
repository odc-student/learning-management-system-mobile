import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class topList {
  final String title;
  final Icon itemicon;
  final Color color;

  topList({
    required this.title,
    required this.color,
    required this.itemicon,

  });
}
class bottomList{
  final Widget containerList;

  bottomList({
    required this.containerList,
});
}

final topLists=<topList>[
  topList(title: "About", color: Color(0xA64B4B4B), itemicon: Icon(Icons.home,color: Colors.white,)),
  topList(title: "course", color:  Color(0xA64B4B4B), itemicon: Icon(Icons.menu_book_outlined,color: Colors.white,)),
  topList(title: "Contact", color:  Color(0xA64B4B4B), itemicon: Icon(Icons.contact_support_outlined,color: Colors.white,)),
  topList(title: "Setting", color:  Color(0xA64B4B4B), itemicon: Icon(Icons.settings,color: Colors.white,)),
  topList(title: "Logout", color:  Color(0xA64B4B4B), itemicon: Icon(Icons.logout,color: Colors.white,)),

];
final bottomLists=<bottomList>[
  bottomList(containerList: Padding(
    padding: const EdgeInsets.only(top: 18.0),
    child: Container(color: Colors.orange, width: 5000,height: 100,
      child: Text("About",style: TextStyle(color: Colors.white),),),
  )),
  bottomList(containerList: Padding(
    padding: const EdgeInsets.only(top: 18.0),
    child: Container(child: Text("course",style: TextStyle(color: Colors.white),),),
  )),
  bottomList(containerList: Padding(
    padding: const EdgeInsets.only(top: 18.0),
    child: Container(
      child: Text("Contact",style: TextStyle(color: Colors.white),),),
  )),
  bottomList(containerList: Padding(
    padding: const EdgeInsets.only(top: 18.0),
    child: Container(child: Text("Setting",style: TextStyle(color: Colors.white),),),
  )),
  bottomList(containerList: Padding(
    padding: const EdgeInsets.only(top: 18.0),
    child: Container(child: Text("Logout",style: TextStyle(color: Colors.white),),),
  )),
];
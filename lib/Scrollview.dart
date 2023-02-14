import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:osl/API/mongodb.dart';
import 'package:osl/ListViewsliversItem.dart';

class ShrinkTopListPage extends StatefulWidget {
  const ShrinkTopListPage({Key? key}) : super(key: key);

  @override
  State<ShrinkTopListPage> createState() => _ShrinkTopListPageState();
}

class _ShrinkTopListPageState extends State<ShrinkTopListPage> {
  var photo;
  late Future<bool> fetchedPhoto;

  Future<bool> Photo() async {
    photo = await MongoDatabase.GetImage("email", "labidimahdi855@gmail.com");

    setState(() {});
    return true;
  }
  var indexpage;
  int getindexs(int index){
    indexpage = index;
    setState(() {

    });
    return indexpage;
  }
  @override
  void initState() {
    fetchedPhoto = Photo();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
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
      body: ListView(
        children:[ Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(height: double.maxFinite,
                child: CustomScrollView(scrollDirection: Axis.horizontal,
                  slivers: <Widget>[
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                      (context, index) {
                            final topList = topLists[index];
                            final bottomList =bottomLists[index];

                            return Container(width: 290,height: 100,decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60)
                            ),
                              child: Column(
                                children: [
                                  InkWell(
                                    child: Card(
                                      color: topList.color,
                                      child:Padding(
                                        padding: const EdgeInsets.only(left: 18.0),
                                        child: Container(height: 50,
                                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              topList.itemicon,
                                              SizedBox(width: 5,),
                                              Text(topList.title,style: TextStyle(color: Colors.white),)
                                            ],
                                          ),
                                        ),
                                      ) ,
                                    ),
                                  ),
                                  bottomList.containerList,
                                ],
                              ),
                            );
                          },
                      childCount: topLists.length)
                      ),

                  ],
                ),
              ),
            ),

          ],
        ),]
      ),

    );
  }

}

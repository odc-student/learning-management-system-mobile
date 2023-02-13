
import 'package:html/parser.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  Future<Widget> getReadmeContent() async {
    final response = await http.get(Uri.parse(
        'https://github.com/MahdiLabidi855/MahdiLabidi855.git'));
    if (response.statusCode == 200) {
      final document = parse(response.body);
      final readmeText = document.getElementsByClassName("markdown-body entry-content container-lg")[0].text;

      List<String> lines = readmeText.split("\n");
      List<Widget> widgets = [];
      for (String line in lines) {
        if (line.startsWith("#")||line.startsWith("#"+" ")) {
          int level = 1;
          while (line[level] == "#") {
            level++;
          }

          double fontSize = 56.0 - level * 2;
          widgets.add(Text(line.substring(level).trim(), style: TextStyle(color: Colors.red, fontSize: fontSize),));
        } else {
          widgets.add(Text(line));
        }

      }

      return Column(
        children: widgets,
      );
    } else {
      throw Exception('Failed to load content');
    }
  }


  Widget _readmeContent =Text("");
  @override
  void initState() {
    super.initState();
    getReadmeContent().then((content) {
      setState(() {
        _readmeContent = content;
      });
    }).catchError((error) {
      print(error);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 108.0),
        child: Center(
          child: _readmeContent ,

        ),
      ),

    );
  }
}













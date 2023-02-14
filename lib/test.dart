import 'package:flutter_html/flutter_html.dart';
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
        'https://github.com/cassidoo/HTML-CSS-Tutorial.git'));
    if (response.statusCode == 200) {
      final document = parse(response.body);
      final readmeText = document.getElementsByClassName("markdown-body entry-content container-lg")[0].innerHtml;



      return Html(data:readmeText ,);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0,left: 10),
          child: _readmeContent,
        ),
      ),

    );
  }
}













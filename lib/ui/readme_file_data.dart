part of '../variable/imports.dart';

class ReadmeFileData extends StatefulWidget {
  const ReadmeFileData({Key? key, required this.link}) : super(key: key);
  final String link;

  @override
  _ReadmeFileDataState createState() => _ReadmeFileDataState();
}

class _ReadmeFileDataState extends State<ReadmeFileData> {
  Future<Widget> getReadmeContent(String link) async {
    final response = await http.get(Uri.parse(link));
    if (response.statusCode == 200) {
      final document = parse(response.body);
      final readmeText = document
          .getElementsByClassName("markdown-body entry-content container-lg")[0]
          .innerHtml;

      return Html(
        data: '''
            $readmeText
          ''',
      );
    } else {
      throw Exception('Failed to load content');
    }
  }

  Widget _readmeContent = Text("");

  @override
  void initState() {
    super.initState();
    getReadmeContent(widget.link).then((content) {
      setState(() {
        _readmeContent = content;
      });
    }).catchError((error) {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 10),
          child: _readmeContent,
        ),
      ),
    );
  }
}

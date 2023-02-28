
part of 'package:osltestcubit/Variable/imports.dart';


class CourCard extends StatelessWidget {
  const CourCard({Key? key, required this.title, required this.Description,required this.active_sprint})
      : super(key: key);
  final String title;
  final String Description;
  final num active_sprint;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage(link: Description,)),//Todo: change Navigation
      );
    },
      child: Stack(children: <Widget>[
        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            border:
            Border.all(color: Color(0xFFFF7900), width: 1),
            borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 10,bottom: 0),
            child: Column(
              children: [
                Text(Description,style: TextStyle(color: Color(0xFFFFFFFF)),),

                Container(
                  margin: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 0),

                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    child: FAProgressBar(
                      backgroundColor: Color(0xBDFFFFFF),
                        currentValue: active_sprint.toDouble(),
                      displayText: '%',
                      progressGradient:LinearGradient(colors:[
                          Color(0xFFFF7900),
                        Colors.deepOrange,
                        Color(0xFFFF4D00)
                        ] ),direction: Axis.horizontal,
                      verticalDirection: VerticalDirection.up,

                      formatValueFixed: 2,
                      animatedDuration: Duration(milliseconds: 1500),
                      ),
                    )

                  ),

              ],
            ),
          ),
        ),

        Positioned(
          left: 15,
          top: 5,
          child: Stack(
            children: [
              Container(

                color: Color(0xFF000000),height: 29,width: MediaQuery.of(context).size.width *0.28,
                child: Text(""),),
              Positioned.fill(top: 0,left: 10,


              child: Align(alignment: AlignmentDirectional.center,
                child: Container(margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),

                  decoration: BoxDecoration(color: Color(0xC7FDFDFD),
                    border: Border.all(color: Color(0xFFFF7900), width: 1),
                    borderRadius: BorderRadius.circular(5),
                    shape: BoxShape.rectangle,
                  ),

                  child: Padding(padding: EdgeInsets.only(top: 8),
                    child: Text(
                      title,
                      style: TextStyle(color: Color(0xFF000000), fontSize: 12),
                    ),
                  ),
                ),
              ),
            )],
          ),
        ),
      ]));
  }
}

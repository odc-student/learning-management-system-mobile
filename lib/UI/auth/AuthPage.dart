part of 'package:osltestcubit/variable/imports.dart';

class authpage extends StatefulWidget {
  const authpage({Key? key}) : super(key: key);

  @override
  State<authpage> createState() => _authpageState();
}

class _authpageState extends State<authpage> {


final List<Widget> Header =[ SignIn(),

  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Powered by :",style: TextStyle(color: Colors.white),),
      Image.asset("assets/images/logo.png",width: 90,)
    ],
  )];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset("assets/images/applogo.png",width: 50,),
            SizedBox(width: 10,),
            Text(
              "OSL",
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.message_outlined),
          ],
        ),
      ),
      body: ConstrainedBox(constraints: BoxConstraints(
        minHeight: 300,
      ),
        child: ListView(
          children: Header,
        ),
      ),
    );
  }
}


part of '../variable/imports.dart';

Container SigninupButton(BuildContext context,bool isLogin, Function onTap){
  return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
      child: ElevatedButton(onPressed: (){
        onTap();
      },
        child: Text(isLogin ? 'Sign In' : 'Sign Up', style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize:16),
        ),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states){
          if(states.contains(MaterialState.pressed)) {
            return Color(0xFFFF7900);
          }
          return Color(0xFFFF7900);
        }), shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3)
        ))
        ),
      )
  );
}
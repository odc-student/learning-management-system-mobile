
part of 'package:osltestcubit/Variable/imports.dart';


class NavigatorService {
  final GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();
  static NavigatorService instance = NavigatorService();

  Future<dynamic> navigateTo(Widget destination) {
    return globalKey.currentState!
        .push(MaterialPageRoute(builder: (context) => destination));
  }
  Future<dynamic> navigatetoReplacement(Widget destination){
    return globalKey.currentState!.pushReplacement(
      PageRouteBuilder(
          pageBuilder: (a, b, c) => OnborderListCourses(),
          transitionDuration: Duration(seconds: 0)),
    );
  }
}

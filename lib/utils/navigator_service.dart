
part of 'package:osltestcubit/variable/imports.dart';


class NavigatorService {
  final GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();
  static NavigatorService instance = NavigatorService();

  Future<dynamic> navigateTo(Widget destination) {
    return globalKey.currentState!
        .push(MaterialPageRoute(builder: (context) => destination));
  }
  Future<dynamic> navigateToReplacement(Widget destination){
    return globalKey.currentState!.pushReplacement(
      PageRouteBuilder(
          pageBuilder: (a, b, c) => destination,
          transitionDuration: Duration(seconds: 0)),
    );
  }
}

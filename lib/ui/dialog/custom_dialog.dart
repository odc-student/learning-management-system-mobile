part of 'package:osltestcubit/variable/imports.dart';



Future<dynamic> customDialog(BuildContext context,dynamic todoOnDismiss,Function todoOnOK,Widget dialogContainer) {
  return AwesomeDialog(
    context: context,
    dialogType: DialogType.noHeader,
    width: double.infinity,
    buttonsBorderRadius: BorderRadius.all(
      Radius.circular(2),
    ),
    dismissOnTouchOutside: true,
    dismissOnBackKeyPress: false,
    onDismissCallback: (type) {todoOnDismiss;},
    headerAnimationLoop: false,
    animType: AnimType.bottomSlide,
    title: 'Add Course',
    body: Container(
      margin: EdgeInsets.all(30),
      child: dialogContainer,
    ),
    showCloseIcon: true,
    btnCancelOnPress: () {
     cancel(HomeScreen());
    },
    btnOkOnPress: () async {
      todoOnOK();
    },
  ).show();
}

part of 'package:osltestcubit/variable/imports.dart';
//Todo:use it


Future<dynamic> customDialog(BuildContext context,ScaffoldFeatureController<SnackBar, SnackBarClosedReason> todoOnDismiss,Function todoOnOK,Function todoOnCancel,Widget dialogContainer) {
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
      todoOnCancel;
    },
    btnOkOnPress: () async {
      todoOnOK;
    },
  ).show();
}

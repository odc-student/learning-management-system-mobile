part of 'package:osltestcubit/variable/imports.dart';


ScaffoldFeatureController<SnackBar, SnackBarClosedReason> dialogDismissed(BuildContext context){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Dismissed '),
    ),
  );
}
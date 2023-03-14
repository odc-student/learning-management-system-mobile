part of 'package:osltestcubit/variable/imports.dart';



class DeleteSprintDialog extends StatelessWidget {
  const DeleteSprintDialog({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Text("You want to add $title"),
    );
  }
}

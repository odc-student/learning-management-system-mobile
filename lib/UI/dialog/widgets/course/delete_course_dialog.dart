part of 'package:osltestcubit/variable/imports.dart';



class deleteCourseDialog extends StatelessWidget {
  const deleteCourseDialog({Key? key,required this.title}) : super(key: key);
final String title;
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Text("You want to delete $title"),
    );
  }
}

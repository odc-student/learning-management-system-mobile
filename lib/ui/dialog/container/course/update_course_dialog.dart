part of 'package:osltestcubit/variable/imports.dart';
class updateCourseDialog extends StatelessWidget {
   updateCourseDialog({Key? key,required this.title,required this.description,required this.titleController,required this.descriptionController}) : super(key: key);
final String title,description;
   TextEditingController titleController = TextEditingController();
   TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AnimatedTextField(
            label: title,
            suffix: Icon(Icons.title),
            textController: titleController,
          ),
          SizedBox(
            height: 3,
          ),
          AnimatedTextField(
            label: description,
            suffix: Icon(Icons.message_outlined),
            textController: descriptionController,
          )
        ],
      ),
    );
  }
}

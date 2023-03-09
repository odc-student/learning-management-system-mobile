part of 'package:osltestcubit/variable/imports.dart';

class UpdateUserDialog extends StatelessWidget {
  UpdateUserDialog({Key? key,required this.fullName,required this.email,required this.titleController,required this.descriptionController}) : super(key: key);
  final String fullName,email;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        children: [
          AnimatedTextField(
            label: fullName,
            suffix: Icon(Icons.title),
            textController: titleController,
          ),
          SizedBox(
            height: 3,
          ),
          AnimatedTextField(
            label: email,
            suffix: Icon(Icons.message_outlined),
            textController: descriptionController,
          )
        ],
      ),
    );
  }
}

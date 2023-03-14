part of 'package:osltestcubit/variable/imports.dart';

class AddSprintFloatingButton extends StatelessWidget {
  AddSprintFloatingButton(
      {Key? key, required this.titleController, required this.linkController})
      : super(key: key);

  final TextEditingController titleController;

  final TextEditingController linkController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        children: [
          AnimatedTextField(
            label: 'Sprint Titile',
            suffix: Icon(Icons.title),
            textController: titleController,
          ),
          SizedBox(
            height: 3,
          ),
          AnimatedTextField(
            label: 'Sprint Link',
            suffix: Icon(Icons.link),
            textController: linkController,
          )
        ],
      ),
    );
  }
}

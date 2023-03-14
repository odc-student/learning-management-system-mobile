part of 'package:osltestcubit/variable/imports.dart';
class addCourseFloatingButton extends StatelessWidget {
   addCourseFloatingButton({Key? key,required this.titleController,required this.descriptionController}) : super(key: key);

 final TextEditingController titleController ;
  final TextEditingController descriptionController ;

  @override
  Widget build(BuildContext context) {
    return  Container(
          margin: EdgeInsets.all(30),
          child: index == 0
              ? Column(
            children: [
              AnimatedTextField(
                label: index == 0
                    ? 'Course Titile'
                    : 'Full Name',
                suffix: Icon(Icons.title),
                textController: titleController,
              ),
              SizedBox(
                height: 3,
              ),
              AnimatedTextField(
                label: 'Course Description',
                suffix: Icon(Icons.message_outlined),
                textController: descriptionController,
              )
            ],
          )
              : Text("Signp Not available"),
        );

  }
}

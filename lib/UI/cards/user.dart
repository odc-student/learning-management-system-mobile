part of 'package:osltestcubit/variable/imports.dart';

class UserCard extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  UserCard(
      {Key? key,
      required this.id,
      required this.fullName,
      required this.email,
      required this.activeSprint,
      required this.index})
      : super(key: key);
  final String fullName;
  final String email;
  final num activeSprint;
  final int index;
  final String id;

  @override
  Widget build(BuildContext context) {
    void _editUser() async {
      context.read<UpdateUserDataCubit>().updateUser(
          id,
          "email",
          _descriptionController.text.isEmpty
              ? email
              : _descriptionController.text);
      context.read<UpdateCourseDataCubit>().update(id, "fullName",
          _titleController.text.isEmpty ? fullName : _titleController.text);
    }

    ;

    void _delete() async {
      context.read<DeleteUserCubit>().delete(id);
    }

    ;
    return Stack(
      children: [
        Container(
            child: Dismissible(
          key: Key(index.toString()),
          background: Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: black,
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(15),
              shape: BoxShape.rectangle,
            ),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 11.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: odc,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Edit",
                  style: TextStyle(color: odc),
                )
              ],
            ),
          ),
          secondaryBackground: Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            decoration: BoxDecoration(
              color: black,
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(15),
              shape: BoxShape.rectangle,
            ),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 11.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.delete,
                  color: odc,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Delete",
                  style: TextStyle(color: odc),
                )
              ],
            ),
          ),
          onDismissed: (direction) {
            if (direction == DismissDirection.startToEnd) {
              customDialog(
                  context,
                  dialogDismissed(context),
                  _editUser,
                  cancel(HomeScreen()),
                  UpdateUserDialog(
                      fullName: fullName,
                      email: email,
                      titleController: _titleController,
                      descriptionController: _descriptionController));
            } else {
              customDialog(context, dialogDismissed(context), _delete,
                  cancel(HomeScreen()), deleteUserDialog(title: fullName));

            }
          },
          child: InkWell(
            radius: 20,
            onTap: () {
              NavigatorService.instance.navigateTo(EveryUserData(
                id: id,
              ));
            },
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              padding: EdgeInsets.only(left: 10, top: 15, right: 10),
              decoration: BoxDecoration(
                border: Border.all(color: odc, width: 1),
                borderRadius: BorderRadius.circular(15),
                shape: BoxShape.rectangle,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/user.png',
                    width: 50,
                  ),
                  Container(
                    width: 160,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        customTextCard(
                            'Email :', email, 'Full Name : ', fullName),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    child: customCircularProgressBar(activeSprint),
                  )
                ],
              ),
            ),
          ),
        ))
      ],
    );
  }
}

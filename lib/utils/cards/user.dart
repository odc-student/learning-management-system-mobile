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
    final double newValue = double.parse("$activeSprint");
    late ValueNotifier<double> valueNotifier;
    valueNotifier = ValueNotifier(0.0);
    valueNotifier.value = newValue;
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
              AwesomeDialog(
                context: context,
                dialogType: DialogType.noHeader,
                width: double.infinity,
                buttonsBorderRadius: BorderRadius.all(
                  Radius.circular(2),
                ),
                dismissOnTouchOutside: true,
                dismissOnBackKeyPress: false,
                onDismissCallback: (type) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Dismissed '),
                    ),
                  );
                },
                headerAnimationLoop: false,
                animType: AnimType.bottomSlide,
                title: 'Add Course',
                body: Container(
                  margin: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      AnimatedTextField(
                        label: fullName,
                        suffix: Icon(Icons.title),
                        textController: _titleController,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      AnimatedTextField(
                        label: email,
                        suffix: Icon(Icons.message_outlined),
                        textController: _descriptionController,
                      )
                    ],
                  ),
                ),
                showCloseIcon: true,
                btnCancelOnPress: () {},
                btnOkOnPress: () async {
                  context.read<UpdateUserDataCubit>().updateUser(
                      id,
                      "email",
                      _descriptionController.text.isEmpty
                          ? email
                          : _descriptionController.text);
                  context.read<UpdateCourseDataCubit>().update(
                      id,
                      "fullName",
                      _titleController.text.isEmpty
                          ? fullName
                          : _titleController.text);
                },
              ).show();
            } else {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.noHeader,
                width: double.infinity,
                buttonsBorderRadius: BorderRadius.all(
                  Radius.circular(2),
                ),
                dismissOnTouchOutside: true,
                dismissOnBackKeyPress: false,
                onDismissCallback: (type) {},
                headerAnimationLoop: false,
                animType: AnimType.bottomSlide,
                title: 'Add Course',
                body: Container(
                  margin: EdgeInsets.all(30),
                  child: Text("You want to delete $fullName"),
                ),
                showCloseIcon: true,
                btnCancelOnPress: () {},
                btnOkOnPress: () async {
                  context.read<DeleteUserCubit>().delete(id);
                },
              ).show();
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
                border: Border.all(color: Color(0xFFFF7900), width: 1),
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
                        customTextCard('Email :', email, 'Full Name : ', fullName),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    child: SimpleCircularProgressBar(
                      size: 80,
                      backColor: white,
                      valueNotifier: valueNotifier,
                      maxValue: 100,
                      backStrokeWidth: 5,
                      progressStrokeWidth: 5,
                      progressColors: const [odc],
                      fullProgressColor: odc,
                      mergeMode: true,
                      onGetText: (double value) {
                        return Text(
                          ' ${value.toInt()}% ',
                          style: TextStyle(color: white),
                        );
                      },
                    ),
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

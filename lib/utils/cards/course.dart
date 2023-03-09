part of 'package:osltestcubit/variable/imports.dart';

class CourseCard extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  CourseCard(
      {Key? key,
      required this.id,
      required this.title,
      required this.description,
      required this.activeSprint,
      required this.isVisible,
      required this.sprintList,
      required this.index})
      : super(key: key);
  final String title;
  final String description;
  final num activeSprint;
  final bool isVisible;
  final int index;
  final String id;
  final List sprintList;

  @override
  Widget build(BuildContext context) {
    final double newValue = double.parse(activeSprint.toString());
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
                          label: title,
                          suffix: Icon(Icons.title),
                          textController: _titleController,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        AnimatedTextField(
                          label: description,
                          suffix: Icon(Icons.message_outlined),
                          textController: _descriptionController,
                        )
                      ],
                    ),
                  ),
                  showCloseIcon: true,
                  btnCancelOnPress: () {},
                  btnOkOnPress: () async {
                    context.read<UpdateCourseDataCubit>().update(
                        id,
                        "description",
                        _descriptionController.text.isEmpty
                            ? description
                            : _descriptionController.text);
                    context.read<UpdateCourseDataCubit>().update(
                        id,
                        "titre",
                        _titleController.text.isEmpty
                            ? title
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
                    child: Text("You want to delete $title"),
                  ),
                  showCloseIcon: true,
                  btnCancelOnPress: () {},
                  btnOkOnPress: () async {
                    context.read<DeleteCourseCubit>().delete(id);
                  },
                ).show();
              }
            },
            child: InkWell(
                radius: 20,
                onTap: () {
                  NavigatorService.instance.navigateTo(ListSprints(
                    list: sprintList,
                    title: title,
                  ));
                },
                child: Stack(children: <Widget>[
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    padding: EdgeInsets.only(
                        top: 18.0, left: 10, bottom: 5, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFF7900), width: 1),
                      borderRadius: BorderRadius.circular(15),
                      shape: BoxShape.rectangle,
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, left: 10),
                              child: Text(
                                description,
                                style: TextStyle(color: Color(0xFFFFFFFF)),
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 40,
                              height: 105,
                              child: Column(
                                children: [
                                  InkWell(
                                    child: isVisible
                                        ? Icon(
                                            Icons.visibility_outlined,
                                            color: odc,
                                          )
                                        : Icon(
                                            Icons.visibility_off_outlined,
                                            color: odc,
                                          ),
                                    onTap: () {
                                      context
                                          .read<UpdateCourseDataCubit>()
                                          .update(
                                              id, "is_visible", !isVisible);
                                    },
                                  ),
                                  SimpleCircularProgressBar(
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
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 5,
                    child: Stack(
                      children: [
                        Container(
                          color: Color(0xFF000000),
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.28,
                          child: Text(""),
                        ),
                        Positioned.fill(
                          top: 0,
                          left: 10,
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.only(
                                  bottom: 5, left: 10, right: 10),
                              decoration: BoxDecoration(
                                color: white,
                                border: Border.all(
                                    color: Color(0xFFFF7900), width: 1),
                                borderRadius: BorderRadius.circular(5),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  title,
                                  style: TextStyle(
                                      color: Color(0xFF000000), fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ])),
          ),
        )
      ],
    );
  }
}

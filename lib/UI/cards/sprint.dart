part of 'package:osltestcubit/variable/imports.dart';

class SprintCard extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  SprintCard(
      {Key? key,
      required this.id,
      required this.title,
      required this.description,
      required this.activeSprint,
      required this.isVisible,
      required this.index})
      : super(key: key);
  final String title;
  final String description;
  final num activeSprint;
  final bool isVisible;
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
                customDialog(context,dialogDismissed(context), ()async {
                  //Todo: change update cubit
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
                } , cancel(HomeScreen()), updateSprintDialog(title: title, description: description, titleController: _titleController, descriptionController: _descriptionController));

              } else {
                customDialog(context, dialogDismissed(context) ,() async { //Todo:change delete cubit
                context.read<DeleteCourseCubit>().delete(id);
                }, cancel(HomeScreen()), deleteSprintDialog(title: title));

              }
            },
            child: InkWell(
                radius: 20,
                onTap: () {
                  NavigatorService.instance
                      .navigateTo(ReadmeFileData(link: description));
                },
                child: Stack(children: <Widget>[
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    padding: EdgeInsets.only(
                        top: 18.0, left: 10, bottom: 5, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: odc, width: 1),
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
                                style: TextStyle(color: white),
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
                                      //Todo:change update cubit
                                      context
                                          .read<UpdateCourseDataCubit>()
                                          .update(
                                              id, "is_visible", !isVisible);
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
                          color: black,
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
                                    color: odc, width: 1),
                                borderRadius: BorderRadius.circular(5),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  title,
                                  style: TextStyle(
                                      color: black, fontSize: 12),
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

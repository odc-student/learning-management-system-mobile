part of 'package:osltestcubit/variable/imports.dart';

class CourseCard extends StatefulWidget {
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
  bool isVisible;
  final int index;
  final String id;
  final List sprintList;

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  final TextEditingController _titleController = TextEditingController();

  final TextEditingController _descriptionController = TextEditingController();
  bool seeMore = false;
  bool isSeeMoreActive=true;

  @override
  void initState(){
    super.initState();
    if(widget.description.length<100){
      setState(() {
        isSeeMoreActive=!isSeeMoreActive;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    void _editCourse() async {
      context.read<UpdateCourseDataCubit>().update(
          widget.id,
          "description",
          _descriptionController.text.isEmpty
              ? widget.description
              : _descriptionController.text);
      context.read<UpdateCourseDataCubit>().update(widget.id, "titre",
          _titleController.text.isEmpty ? widget.title : _titleController.text);
    }

    ;
    void _deleteCourse() async {
      context.read<DeleteCourseCubit>().delete(widget.id);
    }

    ;
    final double newValue = double.parse(widget.activeSprint.toString());
    late ValueNotifier<double> valueNotifier;
    valueNotifier = ValueNotifier(0.0);
    valueNotifier.value = newValue;

    return Stack(
      children: [
        Container(
          child: Dismissible(
            key: Key(widget.index.toString()),
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
                  _editCourse,
                  updateCourseDialog(
                      title: widget.title,
                      titleController: _titleController,
                      description: widget.description,
                      descriptionController: _descriptionController),
                );
              } else {
                customDialog(context, dialogDismissed(context), _deleteCourse,
                    deleteCourseDialog(title: widget.title));
              }
            },
            child: InkWell(
                radius: 20,
                onTap: () {
                  NavigatorService.instance.navigateTo(ListSprints(
                    title: widget.title,
                    id: widget.id,
                  ));
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
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                width: 220,
                                child: Text(
                                  widget.description.length > 100
                                      ?seeMore?widget.description :widget.description.substring(0, 140) +
                                          '...'
                                      : widget.description,
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 40, margin: EdgeInsets.only(bottom: 1),
                              child: Column(
                                children: [
                                  InkWell(
                                    child: widget.isVisible
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
                                          .update(widget.id, "is_visible",
                                              !widget.isVisible);

                                      setState(() {
                                        widget.isVisible = !widget.isVisible;
                                      });
                                    },
                                  ),
                                  customCircularProgressBar(
                                      widget.activeSprint),
                                  isSeeMoreActive?InkWell(
                                    child: seeMore
                                        ? FaIcon(
                                            FontAwesomeIcons.angleUp,
                                            color: white,
                                          )
                                        : FaIcon(
                                            FontAwesomeIcons.angleDown,
                                            color: white,
                                          ),
                                    onTap: () {
                                      setState(() {
                                        seeMore = !seeMore;
                                      });
                                    },
                                  ):SizedBox(),
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
                                border: Border.all(color: odc, width: 1),
                                borderRadius: BorderRadius.circular(5),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  widget.title,
                                  style: TextStyle(color: black, fontSize: 12),
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

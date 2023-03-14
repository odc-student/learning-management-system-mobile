part of 'package:osltestcubit/variable/imports.dart';

class SprintCard extends StatefulWidget {
  SprintCard(
      {Key? key,
      required this.idCourse,
      required this.idSprint,
      required this.title,
      required this.link,
      required this.activeSprint,
      required this.isVisible,
      required this.index})
      : super(key: key);
  final String title;
  final String link;
  final num activeSprint;
  bool isVisible;
  final int index;
  final String idCourse;
  final String idSprint;

  @override
  State<SprintCard> createState() => _SprintCardState();
}

class _SprintCardState extends State<SprintCard> {
  final TextEditingController _titleController = TextEditingController();

  final TextEditingController _linkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void _edit() async {
    await context.read<UpdateSprintCubit>().update(
            widget.idCourse,
            widget.idSprint,
            "titresprint",
            _titleController.text.isEmpty
                ? widget.title
                : _titleController.text,
          );
     await context.read<UpdateSprintCubit>().update(
          widget.idCourse,
          widget.idSprint,
          "link",
          _linkController.text.isEmpty ? widget.link : _linkController.text);
    }

    ;
    void _delete() async {
      context
          .read<DeleteSprintCubit>()
          .delete(widget.idCourse, widget.idSprint);
    }

    ;
    final double newValue = double.parse("${widget.activeSprint}");
    late ValueNotifier<double> valueNotifier;
    valueNotifier = ValueNotifier(0.0);
    valueNotifier.value = newValue;
    return Container(
      child: Dismissible(
        key: Key(widget.index.toString()),
        background: Container(
          margin: EdgeInsets.only(top: 10),
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
            top: 10,
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
                _edit,
                UpdateSprintDialog(
                    title: widget.title,
                    description: widget.link,
                    titleController: _titleController,
                    descriptionController: _linkController));
          } else {
            customDialog(context, dialogDismissed(context), _delete,
                DeleteSprintDialog(title: widget.title));
          }
        },
        child: InkWell(
            radius: 20,
            onTap: () {
              NavigatorService.instance
                  .navigateTo(ReadmeFileData(link: widget.link));
            },
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
              padding: EdgeInsets.only(top: 18.0, left: 10, right: 10),
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
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          widget.title,
                          style: TextStyle(color: white),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 40,
                        height: 40,
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
                              onTap: () async{

                              await  context.read<UpdateSprintCubit>().update(
                                    widget.idCourse,
                                    widget.idSprint,
                                    "sprint_is_visible",
                                    !widget.isVisible);
                                setState(() {
                                  widget.isVisible = !widget.isVisible;
                                });
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

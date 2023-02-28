part of 'package:osltestcubit/Variable/imports.dart';

class CourCard extends StatelessWidget {
  TextEditingController _titlecontrole = TextEditingController();
  TextEditingController _descriptioncontrole = TextEditingController();

  CourCard(
      {Key? key,
      required this.id,
      required this.title,
      required this.Description,
      required this.active_sprint,
      required this.index})
      : super(key: key);
  final String title;
  final String Description;
  final num active_sprint;
  final int index;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Dismissible(
            key: Key(index.toString()),
            background: Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(15),
                shape: BoxShape.rectangle,
              ),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(right: 20.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Edit",
                      style: TextStyle(color: white),
                    )
                  ],
                ),
              ),
            ),
            secondaryBackground: Container(
              margin: EdgeInsets.only(
                top: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(15),
                shape: BoxShape.rectangle,
              ),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(left: 20.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Delete",
                      style: TextStyle(color: white),
                    )
                  ],
                ),
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
                        content: Text('Dismised '),
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
                          textController: _titlecontrole,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        AnimatedTextField(
                          label: Description,
                          suffix: Icon(Icons.message_outlined),
                          textController: _descriptioncontrole,
                        )
                      ],
                    ),
                  ),
                  showCloseIcon: true,
                  btnCancelOnPress: () {},
                  btnOkOnPress: () async {
                    context.read<UpdateCourseDataCubit>().Update(
                        id,
                        "description",
                        _descriptioncontrole.text.isEmpty
                            ? Description
                            : _descriptioncontrole.text);
                    context.read<UpdateCourseDataCubit>().Update(
                        id,
                        "titre",
                        _titlecontrole.text.isEmpty
                            ? title
                            : _titlecontrole.text);

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
                  btnOkOnPress: () async {context.read<DeletecourseCubit>().delete(id);

                  },
                ).show();


              }
            },
            child: InkWell(
                radius: 20,
                onTap: () {
                  NavigatorService.instance.navigateTo(MyHomePage(link: Description));

                },
                child: Stack(children: <Widget>[
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    padding: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFF7900), width: 1),
                      borderRadius: BorderRadius.circular(15),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 18.0, left: 10, bottom: 0),
                      child: Column(
                        children: [
                          Text(
                            Description,
                            style: TextStyle(color: Color(0xFFFFFFFF)),
                          ),
                          Container(
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                child: FAProgressBar(
                                  backgroundColor: Color(0xBDFFFFFF),
                                  currentValue: active_sprint.toDouble(),
                                  displayText: '%',
                                  progressGradient: LinearGradient(colors: [
                                    Color(0xFFFF7900),
                                    Colors.deepOrange,
                                    Color(0xFFFF4D00)
                                  ]),
                                  direction: Axis.horizontal,
                                  verticalDirection: VerticalDirection.up,
                                  formatValueFixed: 2,
                                  animatedDuration: Duration(
                                      milliseconds: 40 * active_sprint.toInt()),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 5,
                    child: Stack(
                      children: [
                        Container(
                          color: Color(0xFF000000),
                          height: 29,
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
                                  bottom: 10, left: 10, right: 10),
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

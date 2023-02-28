part of 'package:osltestcubit/Variable/imports.dart';
class OnborderListCourses extends StatefulWidget {
  const OnborderListCourses({Key? key})
      : super(key: key);

  @override
  State<OnborderListCourses> createState() => _OnborderListCoursesState();
}

class _OnborderListCoursesState extends State<OnborderListCourses> {
  TextEditingController _titlecontrole = TextEditingController();
  TextEditingController _descriptioncontrole = TextEditingController();

  @override
  void initState() {

    super.initState();

    final cubit = context.read<CoursCubit>();
    cubit.fetchCours();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF000000),
        appBar: AppBar(
          backgroundColor: Color(0xFF000000),
          title: Row(
            children: [
              Text(
                'All Courses',
                style: TextStyle(color: Color(0xFFFF7900)),
              ),
              Spacer(),
              InkWell(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onTap: () {AwesomeDialog(
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
                        AnimatedTextField(label: 'Course Titile', suffix: Icon(Icons.title), textController: _titlecontrole,),
                        AnimatedTextField(label: 'Course Description', suffix: Icon(Icons.message_outlined), textController: _descriptioncontrole,)
                      ],
                    ),
                  ),
                  showCloseIcon: true,
                  btnCancelOnPress: () {},
                  btnOkOnPress: () async{
print('${_titlecontrole.text},${_descriptioncontrole.text}');
                    context.read<AddCourseCubit>().add(_titlecontrole.text,_descriptioncontrole.text);


                  },
                ).show();


                },
              )
            ],
          ),
        ),
        body: BlocBuilder<CoursCubit, CourseState>(
          builder: (BuildContext context, Object? state) {
            if (state is InitCourseState || state is LoadingCourseState) {
              return Center(
                child: const CircularProgressIndicator(),
              );
            } else if (state is ResponseCourseState) {
              final courses = state.cours.Record['course'];
              return ListView.builder(
                  itemCount: courses.length,
                  itemBuilder: (context, index) {

                    var cour = courses[index];
                    return ListTile(
                        title: Container(
                          child: Dismissible(
                              key: ValueKey(index.toString()),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: CourCard(
                                  title: cour['titre'] ?? "",
                                  Description: cour['description'] ?? "",
                                  active_sprint: cour['is_visible'] ?? 0,
                                ),
                              ),
                              onDismissed: (direction) {

                                context.read<DeletecourseCubit>().delete(cour['_id'] ?? "");
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('$index dismissed')));
                              }),
                        ));
                  });
            } else if (state is ErrorCourseState) {
              return Center(
                  child: Text(
                    state.message,
                    style: TextStyle(color: Colors.white),
                  ));
            }

            return Center(child: Center(child: Text(state.toString())));
          },
        ));
  }
}

part of 'package:osltestcubit/variable/imports.dart';

class OnborderListCourses extends StatefulWidget {
  const OnborderListCourses({Key? key}) : super(key: key);

  @override
  State<OnborderListCourses> createState() => _OnborderListCoursesState();
}

class _OnborderListCoursesState extends State<OnborderListCourses> {
  TextEditingController _titlecontrole = TextEditingController();
  TextEditingController _descriptioncontrole = TextEditingController();
  bool startAnimation = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 600), () {
      setState(() {
        startAnimation = true;
      });
    });

    final cubit = context.read<CoursCubit>();
    final userdata = context.read<UserCubit>();
    userdata.fetchuserData();
    cubit.fetchCours();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserDataSatate>(
        builder: (BuildContext context, Object? state) {
      if (state is InitUserDataSatate || state is LoadingUserDataSatate) {
        return Center(
          child: const CircularProgressIndicator(),
        );
      } else if (state is ResponseUserDataSatate) {
        final useratt = state.user.userattribute[0];
        return Scaffold(
            backgroundColor: Color(0xFF000000),
            floatingActionButton: FloatingActionButton(
              backgroundColor: odc,
              child: Icon(
                Icons.add,
                color: black,
              ),
              onPressed: () => AwesomeDialog(
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
                  child: Column(
                    children: [
                      AnimatedTextField(
                        label: 'Course Titile',
                        suffix: Icon(Icons.title),
                        textController: _titlecontrole,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      AnimatedTextField(
                        label: 'Course Description',
                        suffix: Icon(Icons.message_outlined),
                        textController: _descriptioncontrole,
                      )
                    ],
                  ),
                ),
                showCloseIcon: true,
                btnCancelOnPress: () {},
                btnOkOnPress: () async {
                  NavigatorService.instance
                      .navigatetoReplacement(OnborderListCourses());

                  context
                      .read<AddCourseCubit>()
                      .add(_titlecontrole.text, _descriptioncontrole.text);
                },
              ).show(),
            ),
            drawer: NavBar(
              is_formateur: false,
              is_admin: true,
              is_user: false,
              useremail: email,
              userfullname: fullname ?? "",
            ),
            appBar: AppBar(
              backgroundColor: Color(0xFF000000),
              title: Row(
                children: [
                  Text(
                    'All Courses',
                    style: TextStyle(color: Color(0xFFFF7900)),
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
                  final courses = state.cours.course;
                  return RefreshIndicator(
                    onRefresh: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (a, b, c) => OnborderListCourses(),
                            transitionDuration: Duration(seconds: 0)),
                      ); // PageRouteBuilder
                      return Future.value(false);
                    },
                    child: ListView.builder(
                        itemCount: courses.length,
                        itemBuilder: (context, index) {
                          var cour = courses[index];

                          return AnimatedContainer(
                            duration:
                                Duration(milliseconds: 700 + (index * 100)),
                            curve: Curves.easeInOut,
                            transform: Matrix4.translationValues(
                              startAnimation ? 0 : 500,
                              0,
                              0,
                            ),
                            child: ListTile(
                                title: Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: CourCard(
                                  id: cour.id ?? "",
                                  title: cour.title ?? "",
                                  Description: cour.description ?? "",
                                  active_sprint: cour.is_visible ?? 0,
                                  index: index,
                                ),
                              ),
                            )),
                          );
                        }),
                  );
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
      } else if (state is ErrorUserDataSatate) {
        print(state.message);
        return Container(
          child: Center(
            child: Text(
              state.message,
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ),
        );
      }
      return Container(
        child: Center(
            child: Text(
          "you are hire",
          style: TextStyle(color: white),
        )),
      );
    });
  }
}

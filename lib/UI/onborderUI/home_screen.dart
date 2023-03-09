part of 'package:osltestcubit/variable/imports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _titlecontrole = TextEditingController();
  TextEditingController _descriptioncontrole = TextEditingController();
  bool startAnimation = false;
  List Pages = <Widget>[ListCourses(), Profile(), ListUsers()];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 600), () {
      setState(() {
        startAnimation = true;
      });
    });
    final cubit = context.read<CoursesCubit>();
    final userdata = context.read<MyUserCubit>();
    userdata.fetchProfile();
    cubit.fetchCourses();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyUserCubit, UserDataState>(
        builder: (BuildContext context, Object? state) {
      if (state is InitUserDataState || state is LoadingUserDataState) {
        return Center(
          child: const CircularProgressIndicator(),
        );
      } else if (state is ResponseUserDataState) {
        return Scaffold(
            backgroundColor: Color(0xFF000000),
            floatingActionButton: index == 0 || index == 2
                ? FloatingActionButton(
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
                      title: index == 0 ? 'Add Course' : 'Add User',
                      body: Container(
                        margin: EdgeInsets.all(30),
                        child: index == 0
                            ? Column(
                                children: [
                                  AnimatedTextField(
                                    label: index == 0
                                        ? 'Course Titile'
                                        : 'Full Name',
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
                              )
                            : Text("Signp Not available"),
                      ),
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: index == 0
                          ? () async {
                              NavigatorService.instance
                                  .navigateToReplacement(HomeScreen());

                              context.read<AddCourseCubit>().add(
                                  _titlecontrole.text,
                                  _descriptioncontrole.text);
                            }
                          : () {
                              // Todo:fix signup User
                            },
                    ).show(),
                  )
                : null,
            drawer: NavBar(
              isInstructor: false,
              isAdmin: true,
              isUser: false,
              userEmail: email,
              userFullName: fullName ?? "",
            ),
            appBar: AppBar(
              backgroundColor: Color(0xFF000000),
              title: Row(
                children: [
                  Text(
                    appBarTitle,
                    style: TextStyle(color: Color(0xFFFF7900)),
                  )
                ],
              ),
            ),
            body: Pages[index]);
      } else if (state is ErrorUserDataState) {
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
        child: Text(""),
      );
    });
  }
}

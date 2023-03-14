part of 'package:osltestcubit/variable/imports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  bool startAnimation = false;
  List pages = <Widget>[ListCourses(), Profile(), ListUsers()];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 600), () {
      setState(() {
        startAnimation = true;
      });
    });
    final course = context.read<CoursesCubit>();
    final userdata = context.read<MyUserCubit>();
    userdata.fetchProfile();
    course.fetchCourses();
  }

  @override
  Widget build(BuildContext context) {
    void _add()  async {
      NavigatorService.instance
          .navigateToReplacement(HomeScreen());

      context.read<AddCourseCubit>().add(
          _titleController.text,
          _descriptionController.text);
    }
    return BlocBuilder<MyUserCubit, UserDataState>(
        builder: (BuildContext context, Object? state) {
      if (state is InitUserDataState || state is LoadingUserDataState) {
        return Center(
          child: const CircularProgressIndicator(),
        );
      } else if (state is ResponseUserDataState) {
        return Scaffold(
            backgroundColor: black,
            floatingActionButton: homeScreenIndex == 0 || homeScreenIndex == 2
            //Todo: problem with cancel => (){} ;Todo:Change container to addCourseFloatingButton
                ?customActionButton(context, AddCourseFloatingButton(titleController: _titleController, descriptionController: _descriptionController),_add )
                : null,
            drawer: NavBar(
              isInstructor: false,
              isAdmin: true,
              isUser: false,
              userEmail: email,
              userFullName: fullName ?? "",
            ),
            appBar: AppBar(
              backgroundColor: black,
              title: Row(
                children: [
                  Text(
                    appBarTitle,
                    style: TextStyle(color: odc),
                  )
                ],
              ),
            ),
            body: pages[homeScreenIndex]);
      } else if (state is ErrorUserDataState) {
        print(state.message);
        return Container(
          child: Center(
            child: Text(
              state.message,
              style: TextStyle(fontSize: 10, color: white),
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

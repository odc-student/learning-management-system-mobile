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
  List Pages = <Widget>[Listcourses(), Profile(),Listusers()];

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
        return Scaffold(
            backgroundColor: Color(0xFF000000),
            floatingActionButton:index==0|| index==2? FloatingActionButton(
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
            ):null,
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
            body: Pages[index]);
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
        child: Text(""),
      );
    });
  }
}

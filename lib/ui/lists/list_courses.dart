part of 'package:osltestcubit/variable/imports.dart';

class ListCourses extends StatefulWidget {
  const ListCourses({Key? key}) : super(key: key);

  @override
  State<ListCourses> createState() => _ListCoursesState();
}

class _ListCoursesState extends State<ListCourses> {
  bool startAnimation = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 600), () {
      setState(() {
        startAnimation = true;
      });
    });

    final cubit = context.read<CoursesCubit>();
    cubit.fetchCourses();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoursesCubit, CourseState>(
      builder: (BuildContext context, Object? state) {
        if (state is InitCourseState || state is LoadingCourseState) {
          return Center(
            //Todo:custom splash screen
            child: const CircularProgressIndicator(),
          );
        } else if (state is ResponseCourseState) {
          final courses = state.courses.course;
          return RefreshIndicator(
            onRefresh: () {
              NavigatorService.instance.navigateToReplacement(HomeScreen());
              // PageRouteBuilder
              return Future.value(false);
            },
            child: ListView.builder(
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  var cour = courses[index];

                  return AnimatedContainer(
                    duration: Duration(milliseconds: 700 + (index * 100)),
                    curve: Curves.easeInOut,
                    transform: Matrix4.translationValues(
                      startAnimation ? 0 : 500,
                      0,
                      0,
                    ),
                    child: ListTile(
                        title: Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: CourseCard(
                          id: cour.id ?? "",
                          title: cour.title ?? "",
                          description: cour.description ?? "",
                          isVisible: cour.isVisible ?? false,
                          sprintList: cour.list ?? [],
                          activeSprint: 0,
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
            style: TextStyle(color: white),
          ));
        }

        return Center(child: Center(child: Text(state.toString())));
      },
    );
  }
}

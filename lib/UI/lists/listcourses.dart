part of 'package:osltestcubit/variable/imports.dart';
class Listcourses extends StatefulWidget {
  const Listcourses({Key? key}) : super(key: key);

  @override
  State<Listcourses> createState() => _ListcoursesState();
}

class _ListcoursesState extends State<Listcourses> {
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
    cubit.fetchCours();
  }

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<CoursCubit, CourseState>(
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
    );
  }
}

part of 'package:osltestcubit/variable/imports.dart';
//Todo: remove this copy of list courses
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    final cubit = context.read<CoursesCubit>();
    cubit.fetchCourses();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: black,
        appBar: AppBar(
          backgroundColor: black,
          title: const Text(
            'All Courses',
            style: TextStyle(color: odc),
          ),
        ),
        body: BlocBuilder<CoursesCubit, CourseState>(
          builder: (BuildContext context, Object? state) {
            if (state is InitCourseState || state is LoadingCourseState) {
              return Center(
                child: const CircularProgressIndicator(),
              );
            } else if (state is ResponseCourseState) {
              //Todo: change the courses from hire to be like these courses["course"][index] and cour['titre']
              final courses = state.courses.course;
              return ListView.builder(
                  itemCount: courses.length,
                  itemBuilder: (context, index) {
                    final cour = courses[index];
                    return ListTile(
                        title: Container(
                      child: Dismissible(
                          key: ValueKey(index.toString()),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: CourseCard(
                              title: cour.title ?? "",
                              description: cour.description ?? "",
                              activeSprint: 0,
                              id: '',
                              sprintList: [],
                              index: 0,
                              isVisible: false,
                            ),
                          ),
                          onDismissed: (direction) {
                            BlocBuilder<DeleteCourseCubit, DeleteCourseState>(
                                builder: (BuildContext context, Object? state) {
                              if (state is InitDeleteCourseState) {
                                return Container();
                              } else if (state is LoadingDeleteCourseState) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else if (state is ResponseDeleteCourseState) {
                                context
                                    .read<DeleteCourseCubit>()
                                    .delete(cour.id ?? "");
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text('$index dismissed')));
                                return Text("");
                              } else if (state is ErrorDeleteCourseState) {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text(
                                        'Failed to add $index :  ${state.message} ')));
                                return Text(
                                  'Failed to add data: ${state.message}',
                                  style: TextStyle(color: white),
                                );
                              }
                              return Container();
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('$index dismissed')));
                          }),
                    ));
                  });
            } else if (state is ErrorCourseState) {
              return Center(
                  child: Text(
                state.message,
                style: TextStyle(color: white),
              ));
            }

            return Center(child: Center(child: Text(state.toString())));
          },
        ));
  }
}

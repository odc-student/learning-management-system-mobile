part of '../variable/imports.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();

    final cubit = context.read<CoursCubit>();
    cubit.fetchCours();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: black,
        appBar: AppBar(backgroundColor: black,
          title: const Text('All Courses',style: TextStyle(color: odc),),
        ),
        body: BlocBuilder<CoursCubit, CourseState>(
          builder: (BuildContext context, Object? state) {
            if (state is InitCourseState || state is LoadingCourseState) {
              return Center(
                child: const CircularProgressIndicator(),
              );
            } else if (state is ResponseCourseState) {//Todo: change the courses from hire to be like these courses["course"][index] and cour['titre']
              final courses = state.cours.course;
              return ListView.builder(
                  itemCount: courses.length,
                  itemBuilder: (context, index) {
                    final cour = courses[index];
                    return ListTile(title:Container(
                      child: Dismissible(
                          key: ValueKey(index.toString()),
                          child: Padding(
                            padding:
                            const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: CourCard(
                              title: cour.title ?? "",
                              Description: cour.description ?? "",
                              active_sprint: cour.is_visible ?? 0, id: '', index: 0,
                            ),
                          ),
                          onDismissed: (direction) {
                            BlocBuilder<DeletecourseCubit, DeleteCourseState>(
                                builder: (BuildContext context,Object? state) {
                                  if (state is InitDeleteCourseState) {
                                    return Container();
                                  } else if (state is LoadingDeleteCourseState) {
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  } else if (state is ResponseDeleteCourseState) {
                                    context
                                        .read<DeletecourseCubit>()
                                        .delete(cour.id ?? "");
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text('$index dismissed')));
                                    return Text("");
                                  } else if (state is ErrorDeleteCourseState) {

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text('Failed to delete $index :  ${state.message} ')));
                                    return Text(
                                        'Failed to delete data: ${state.message}',style: TextStyle(color:white),);
                                  }return Container();
                                });
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text('$index dismissed'))
                            );
                          }
                          ),
                    )

                            );
                  });
            } else if (state is ErrorCourseState) {
              return Center(child: Text(state.message,style: TextStyle(color: white),));
            }

            return Center(child: Center(child: Text(state.toString())));
          },
        ));
  }
}

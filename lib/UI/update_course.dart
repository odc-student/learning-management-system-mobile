part of 'package:osltestcubit/variable/imports.dart';

class CourseData extends StatefulWidget {
  const CourseData({Key? key}) : super(key: key);

  @override
  State<CourseData> createState() => _CourseDataState();
}

class _CourseDataState extends State<CourseData> {
  @override
  void initState() {
    super.initState();
    final cubit = context.read<CoursDataCubit>();
    cubit.fetchOneCours();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<CoursDataCubit, CourseDataState>(
          builder: (BuildContext context, Object? state) {
            print(state);
            if (state is InitCourseDataState) {
              return Container();
            } else if (state is LoadingCourseDataState) {
              return Center(
                child: const CircularProgressIndicator(),
              );
            } else if (state is ResponseCourseDataState) {
              final course = state.cours;

              return Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Titre : "),
                        Text(course?.title ?? ""),
                        Spacer(),
                        Icon(Icons.edit)
                      ],
                    )
                  ],
                ),
              );
            } else if (state is ErrorCourseDataState) {
              return Center(
                child: Text(
                  'Failed to Load data: ${state.message}',
                  style: TextStyle(color: black),
                ),
              );
            }
            return Container();
          },
        ));
  }
}

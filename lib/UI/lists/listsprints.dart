part of 'package:osltestcubit/variable/imports.dart';

class ListSprints extends StatefulWidget {
  const ListSprints({Key? key, required this.list,required this.title}) : super(key: key);
  final List list;
  final String title;

  @override
  State<ListSprints> createState() => _ListSprintsState();
}

class _ListSprintsState extends State<ListSprints> {
  bool startAnimation = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 600), () {
      setState(() {
        startAnimation = true;
      });
    });

    final cubit = context.read<SprintsCubit>();
    cubit.fetchSprint();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: black,
      appBar: AppBar(backgroundColor: black,
        title: Text('${widget.title} Sprints',style: TextStyle(color: white),),
      ),
      body: BlocBuilder<SprintsCubit, SprintsState>(
        builder: (BuildContext context, Object? state) {
          if (state is InitSprintsState || state is LoadingSprintsState) {
            return Center(
              child: const CircularProgressIndicator(),
            );
          } else if (state is ResponseSprintsState) {
            final sprints = state.sprints.sprint;
            return RefreshIndicator(
              onRefresh: () {
                NavigatorService.instance
                    .navigateToReplacement(HomeScreen());
                // PageRouteBuilder
                return Future.value(false);
              },
              child: ListView.builder(
                  itemCount: sprints.length,
                  itemBuilder: (context, index) {
                    var sprint = sprints[index];

                    return AnimatedContainer(
                      duration: Duration(milliseconds: 700 + (index * 100)),
                      curve: Curves.easeInOut,
                      transform: Matrix4.translationValues(
                        startAnimation ? 0 : 500,
                        0,
                        0,
                      ),
                      child: ListTile(
                          title: Container(margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: SprintCard(
                          id: sprint.id ?? "",
                          title: sprint.title ?? "",
                          description: sprint.link ?? "",
                          isVisible: sprint.isVisible ?? false,
                          activeSprint: 0,
                          index: index,
                        ),
                      )),
                    );
                  }),
            );
          } else if (state is ErrorSprintsState) {
            return Center(
                child: Text(
              state.message,
              style: TextStyle(color: Colors.white),
            ));
          }

          return Center(child: Center(child: Text(state.toString())));
        },
      ),
    );
  }
}

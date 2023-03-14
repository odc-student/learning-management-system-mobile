part of 'package:osltestcubit/variable/imports.dart';

class ListSprints extends StatefulWidget {
  const ListSprints({Key? key, required this.title, required this.id})
      : super(key: key);

  final String id;
  final String title;

  @override
  State<ListSprints> createState() => _ListSprintsState();
}

class _ListSprintsState extends State<ListSprints> {
  bool startAnimation = false;
  TextEditingController _titleController = TextEditingController();
  TextEditingController _linkController = TextEditingController();

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 600), () {
      setState(() {
        startAnimation = true;
      });
    });

    final sprint = context.read<SprintsCubit>();
    sprint.fetchSprint(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    void _add() async {
      NavigatorService.instance.navigateToReplacement(ListSprints(title: widget.title, id: widget.id));

      context
          .read<AddSprintCubit>()
          .add(_titleController.text, _linkController.text, widget.id);
    }

    return Scaffold(
      backgroundColor: black,
      floatingActionButton: customActionButton(
          context,
          addSprintFloatingButton(
              titleController: _titleController,
              linkController: _linkController),
          _add),
      appBar: AppBar(
        backgroundColor: black,
        title: Text(
          '${widget.title} Sprints',
          style: TextStyle(color: white),
        ),
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
                NavigatorService.instance.navigateToReplacement(
                    ListSprints(title: widget.title, id: widget.id));
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
                          title: Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: SprintCard(
                          idCourse: widget.id,
                          title: sprint.title ?? "",
                          link: sprint.link ?? "",
                          isVisible: sprint.isVisible ?? false,
                          activeSprint: 0,
                          index: index,
                          idSprint: sprint.id ?? "",
                        ),
                      )),
                    );
                  }),
            );
          } else if (state is ErrorSprintsState) {
            return Center(
                child: Text(
              state.message,
              style: TextStyle(color: white),
            ));
          }

          return Center(child: Center(child: Text(state.toString())));
        },
      ),
    );
  }
}

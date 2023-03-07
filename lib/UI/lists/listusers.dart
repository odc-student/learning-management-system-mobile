part of 'package:osltestcubit/variable/imports.dart';
class Listusers extends StatefulWidget {
  const Listusers({Key? key}) : super(key: key);

  @override
  State<Listusers> createState() => _ListusersState();
}

class _ListusersState extends State<Listusers> {
  bool startAnimation = false;
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 600), () {
      setState(() {
        startAnimation = true;
      });
    });

    final cubit = context.read<AllUsersCubit>();
    cubit.fetchAllUsers();
  }

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<AllUsersCubit, AllUserState>(
      builder: (BuildContext context, Object? state) {
        if (state is InitAllUserState || state is LoadingAllUserState) {
          return Center(
            child: const CircularProgressIndicator(),
          );
        } else if (state is ResponseAllUserState) {
          final users = state.user.userattribute;
          return RefreshIndicator(
            onRefresh: () {
              NavigatorService.instance.navigatetoReplacement(OnborderListCourses());
            // PageRouteBuilder
              return Future.value(false);
            },
            child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  var user = users[index];

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

                            child: UserCard(
                              id: user.id ?? "",
                              fullname: user.fullname ?? "",
                              email: user.email ?? "",
                              active_sprint:  Random().nextInt(100),// Todo: add attribute in model and mongodb and api
                              index: index,
                            ),
                          ),
                        )),
                  );
                }),
          );
        } else if (state is ErrorAllUserStatee) {
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

part of 'package:osltestcubit/variable/imports.dart';

class EveryUserData extends StatefulWidget {
  EveryUserData({Key? key, required this.id}) : super(key: key);
  String id;

  @override
  State<EveryUserData> createState() => _EveryUserDataState();
}

class _EveryUserDataState extends State<EveryUserData> {
  TextEditingController text = TextEditingController();
  bool isEditable = false;

  @override
  void initState() {
    super.initState();
    final userdata = context.read<UserCubit>();
    userdata.fetchUser(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: BlocBuilder<UserCubit, UserState>(
          builder: (BuildContext context, Object? state) {
        if (state is InitUserState || state is LoadingUserState) {
          return Center(
            child: const CircularProgressIndicator(),
          );
        } else if (state is ResponseUserState) {
          final _user = state.user;
          print('hire $_user');
          return SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        child: Image.asset(
                      'assets/images/user.png',
                      height: 100,
                    )),
                    Positioned(
                        top: 60,
                        left: 60,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: black,
                              borderRadius: BorderRadius.circular(50)),
                          child: IconButton(
                            icon: Icon(
                              isEditable
                                  ? Icons.person_pin_outlined
                                  : Icons.edit_outlined,
                              size: 20,
                            ),
                            color: odc,
                            onPressed: () {
                              setState(() {
                                isEditable = !isEditable;
                              });
                            },
                          ),
                        ))
                  ],
                ),
                Text(
                  'Edit ${_user.fullname} Profile',
                  style: const TextStyle(color: white, fontSize: 30),
                ),
                Divider(
                  color: white,
                ),
                isEditable
                    ? Signup(
                        email: _user.email.toString(),
                        phoneN: _user.phoneN.toString(),
                        fullName: _user.fullname.toString(),
                        dateB: _user.dateB.toString(),
                      )
                    : Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            profileText(
                                "Full Name :", _user.fullname.toString()),
                            Divider(
                              color: white,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            profileText("Email", _user.email.toString()),
                            Divider(
                              color: white,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            profileText(
                                "Date of Birth", _user.dateB.toString()),
                            Divider(
                              color: white,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            profileText(
                                "Phone Number", _user.phoneN.toString()),
                            Divider(
                              color: white,
                            ),
                          ],
                        ),
                      )
              ],
            ),
          );
        } else if (state is ErrorUserState) {
          return Container(
            child: Center(
              child: Text(
                state.message,
                style: TextStyle(fontSize: 10, color: white),
              ),
            ),
          );
        }
        return Text('');
      }),
    );
  }
}

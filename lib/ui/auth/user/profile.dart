part of 'package:osltestcubit/variable/imports.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController text = TextEditingController();
  bool isEdit = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyUserCubit, UserDataState>(
        builder: (BuildContext context, Object? state) {
      if (state is InitUserDataState || state is LoadingUserDataState) {
        return Center(
          child: const CircularProgressIndicator(),
        );
      } else if (state is ResponseUserDataState) {
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
                            isEdit
                                ? Icons.person_pin_outlined
                                : Icons.edit_outlined,
                            size: 20,
                          ),
                          color: odc,
                          onPressed: () {
                            setState(() {
                              isEdit = !isEdit;
                            });
                          },
                        ),
                      ))
                ],
              ),
              Text(
                'Edit Your Profile',
                style: const TextStyle(color: white, fontSize: 30),
              ),
              Divider(
                color: white,
              ),
              isEdit
                  ? Signup(
                      fullName: fullName,
                      dateBerth: dateBirthDay,
                      email: email,
                      phoneN: PhoneNumber,
                    )
                  : Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          profileText("Full Name :", fullName),
                          Divider(
                            color: white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          profileText("Email", email),
                          Divider(
                            color: white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          profileText("Date of Birth", dateBirthDay),
                          Divider(
                            color: white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          profileText("Phone Number", PhoneNumber),
                          Divider(
                            color: white,
                          ),
                        ],
                      ),
                    )
            ],
          ),
        );
      } else if (state is ErrorUserDataState) {
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
    });
  }
}

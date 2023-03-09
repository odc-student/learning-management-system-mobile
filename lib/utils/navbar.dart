part of 'package:osltestcubit/variable/imports.dart';

class NavBar extends StatelessWidget {
  const NavBar(
      {Key? key,
      required this.userFullName,
      required this.userEmail,
      required this.isAdmin,
      required this.isInstructor,
      required this.isUser})
      : super(key: key);
  final bool isAdmin;
  final bool isInstructor;
  final bool isUser;
  final String userFullName;
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(userFullName),
              accountEmail: Text(userEmail),
              /*  currentAccountPicture: Image.asset('assets/logo192.png'),

                       CircleAvatar(
                          child: ClipOval(
                            child: Image.memory(
                              base64Decode(photo),
                              width: 90,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),*/
              decoration: BoxDecoration(color: black),
            ),
            isAdmin
                ? Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.my_library_books_outlined),
                          title: Text('List courses'),
                          textColor: white,
                          selectedColor: odc,
                          iconColor: odc,
                          selected: index == 0 ? true : false,
                          onTap: () {
                            appBarTitle = 'All Courses';
                            index = 0;
                            NavigatorService.instance
                                .navigateToReplacement(HomeScreen());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.menu_book_outlined),
                          title: Text('Favorites'),
                          textColor: white,
                          selectedColor: odc,
                          iconColor: odc,
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.person_pin_outlined),
                          title: Text('Profile'),
                          textColor: white,
                          selectedColor: odc,
                          iconColor: odc,
                          selected: index == 1 ? true : false,
                          onTap: () {
                            appBarTitle = 'Profile';
                            index = 1;

                            NavigatorService.instance
                                .navigateToReplacement(HomeScreen());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.supervised_user_circle_outlined),
                          title: Text('List User'),
                          textColor: white,
                          selectedColor: odc,
                          iconColor: odc,
                          selected: index == 2 ? true : false,
                          onTap: () {
                            index = 2;
                            appBarTitle = 'All Users';

                            NavigatorService.instance
                                .navigateToReplacement(HomeScreen());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.email_rounded),
                          title: Text('Claim'),
                          textColor: white,
                          selectedColor: odc,
                          iconColor: odc,
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.bar_chart_outlined),
                          title: Text('Tracking'),
                          textColor: white,
                          selectedColor: odc,
                          iconColor: odc,
                          onTap: () {},
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(
                            color: white,
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.settings),
                          title: Text('Setting'),
                          textColor: white,
                          selectedColor: odc,
                          iconColor: odc,
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.logout),
                          title: Text('Logout'),
                          textColor: white,
                          selectedColor: odc,
                          iconColor: odc,
                          onTap: () {},
                        ),
                      ],
                    ),
                  )
                : isInstructor
                    ? Container(
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.home),
                              title: Text('About'),
                              textColor: white,
                              selectedColor: odc,
                              iconColor: odc,
                              selected: true,
                              onTap: () {},
                            ),
                            ListTile(
                              leading: Icon(Icons.menu_book_outlined),
                              title: Text('Course'),
                              textColor: white,
                              selectedColor: odc,
                              iconColor: odc,
                              onTap: () {},
                            ),
                            ListTile(
                              leading: Icon(Icons.contact_support_outlined),
                              title: Text('Contact'),
                              textColor: white,
                              selectedColor: odc,
                              iconColor: odc,
                              onTap: () {},
                            ),
                            ListTile(
                              leading: Icon(Icons.settings),
                              title: Text('Setting'),
                              textColor: white,
                              selectedColor: odc,
                              iconColor: odc,
                              onTap: () {},
                            ),
                            ListTile(
                              leading: Icon(Icons.logout),
                              title: Text('Logout'),
                              textColor: white,
                              selectedColor: odc,
                              iconColor: odc,
                              onTap: () {},
                            ),
                          ],
                        ),
                      )
                    : isUser
                        ? Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.home),
                                  title: Text('About'),
                                  textColor: white,
                                  selectedColor: odc,
                                  iconColor: odc,
                                  selected: true,
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: Icon(Icons.menu_book_outlined),
                                  title: Text('Favorites'),
                                  textColor: white,
                                  selectedColor: odc,
                                  iconColor: odc,
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: Icon(Icons.settings),
                                  title: Text('Setting'),
                                  textColor: white,
                                  selectedColor: odc,
                                  iconColor: odc,
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: Icon(Icons.logout),
                                  title: Text('Logout'),
                                  textColor: white,
                                  selectedColor: odc,
                                  iconColor: odc,
                                  onTap: () {},
                                ),
                              ],
                            ),
                          )
                        : Container(
                            height: MediaQuery.of(context).size.height,
                            child: ListTile(
                                title: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Powered by :",
                                      style: TextStyle(color: white),
                                    ),
                                    Image.asset(
                                      "assets/images/logo.png",
                                      width: 90,
                                    )
                                  ],
                                ),
                              ],
                            )),
                          )
          ],
        ));
  }
}

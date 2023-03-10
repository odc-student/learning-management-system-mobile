import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'variable/imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
    home: MultiBlocProvider(
      providers:[
        BlocProvider(create: (BuildContext context) => CoursesCubit(CourseRepository())),
        BlocProvider(create: (BuildContext context) => DeleteCourseCubit(DeleteCourseRepository()) ),
        BlocProvider(create: (BuildContext context) => UpdateCourseDataCubit( UpdateCourseDataRepository()) ),
        BlocProvider(create: (BuildContext context) => AddCourseCubit( AddCourseRepository()) ),
        BlocProvider(create: (BuildContext context) => SignupCubit( SignupRepository()) ),
        BlocProvider(create: (BuildContext context) => MyUserCubit( GetMeRepository()) ),
        BlocProvider(create: (BuildContext context) => UserCubit( UserRepository()) ),
        BlocProvider(create: (BuildContext context) => UpdateUserDataCubit( UpdateUserRepository()) ),
        BlocProvider(create: (BuildContext context) => AllUsersCubit( UsersRepository()) ),
        BlocProvider(create: (BuildContext context) => DeleteUserCubit( DeleteUserRepository()) ),
        BlocProvider(create: (BuildContext context) => SprintsCubit( SprintsRepository()) ),
        BlocProvider(create: (BuildContext context) => AddSprintCubit( AddSprintRepository()) ),
        BlocProvider(create: (BuildContext context) => UpdateSprintCubit( UpdateSprintRepository()) ),
        BlocProvider(create: (BuildContext context) => DeleteSprintCubit( DeleteSprintRepository()) ),
        BlocProvider(create: (BuildContext context) => SignInCubit( SignInRepository()) )

      ],
        child:  MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: NavigatorService.instance.globalKey,
          home: HomeScreen(),
        ),),
    );

  }
}

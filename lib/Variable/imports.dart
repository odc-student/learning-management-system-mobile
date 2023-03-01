import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'dart:ui' as ui;
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'dart:convert';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:html/parser.dart' show parse;
import 'package:image_picker/image_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:osltestcubit/data/models/user.dart';


import '../cubit/course/delete_course/delete_course_state.dart';
import '../../cubit/course/delete_course/delete_course_state.dart';
import 'package:osltestcubit/cubit/course/update_course/update_course_stete.dart';
import 'package:osltestcubit/cubit/course/add_course/add_course_state.dart';
import 'package:osltestcubit/data/models/cour.dart';

import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';




part 'package:osltestcubit/UI/Listcourses.dart';
part 'package:osltestcubit/UI/update_course.dart';
part 'package:osltestcubit/UI/course.dart';
part 'package:osltestcubit/utils/custem_textfaild/utils.dart';
part 'package:osltestcubit/UI/onborderUI/onborder_courses.dart';
part 'package:osltestcubit/utils/custem_textfaild/animated_textfield.dart';
part 'package:osltestcubit/UI/auth/AuthPage.dart';
part 'package:osltestcubit/UI/auth/signup/SignUp.dart';
part 'package:osltestcubit/UI/auth/signin/SignIn.dart';


part 'package:osltestcubit/variable/var.dart';

part 'package:osltestcubit/data/Repository/sprint/sprint_data_repository.dart';
part 'package:osltestcubit/data/Repository/course/add_course_repository.dart';
part 'package:osltestcubit/data/Repository/course/all_courses_repository.dart';
part 'package:osltestcubit/data/Repository/course/delete_course_repository.dart';
part 'package:osltestcubit/data/Repository/course/update_course_repository.dart';
part 'package:osltestcubit/data/Repository/auth/signin/signin_repository.dart';


part 'package:osltestcubit/cubit/sprint/get_data_from_sprint/sprint_data_cubit.dart';
part 'package:osltestcubit/cubit/course/add_course/add_course_cubit.dart';
part 'package:osltestcubit/cubit/auth/signin/signin_state.dart';
part 'package:osltestcubit/cubit/course/delete_course/delete_course_cubit.dart';
part 'package:osltestcubit/cubit/course/get_all_courses/all_courses_cubit.dart';
part 'package:osltestcubit/cubit/course/update_course/update_course_cubit.dart';
part 'package:osltestcubit/cubit/auth/signin/signin_cubit.dart';

part '../cubit/course/get_all_courses/all_courses_state.dart';
part '../cubit/sprint/get_data_from_sprint/sprint_data_state.dart';

part 'package:osltestcubit/utils/button.dart';
part 'package:osltestcubit/utils/cards.dart';
part 'package:osltestcubit/utils/navbar.dart';
part 'package:osltestcubit/utils/textfaild.dart';
part 'package:osltestcubit/utils/navigator_service.dart';
part 'package:osltestcubit/utils/ImagePickerbase64.dart';








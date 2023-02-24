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

import '../cubit/sprint/get_data_from_sprint/sprint_data_state.dart';
import '../cubit/course/delete_course/delete_course_state.dart';
import '../cubit/course/get_all_courses/all_courses_state.dart';
import '../../cubit/course/delete_course/delete_course_state.dart';
import '../../cubit/course/get_all_courses/all_courses_state.dart';
import 'package:osltestcubit/cubit/course/update_course/update_course_stete.dart';
import 'package:osltestcubit/cubit/sprint/get_data_from_sprint/sprint_data_state.dart';
import 'package:osltestcubit/cubit/course/add_course/add_course_state.dart';

import 'package:osltestcubit/models/cour.dart';






part 'package:osltestcubit/UI/Listcourses.dart';
part 'package:osltestcubit/UI/update_course.dart';
part 'package:osltestcubit/UI/course.dart';
part 'package:osltestcubit/Widgets/custem_textfaild/utils.dart';
part 'package:osltestcubit/UI/onborderUI/onborder_courses.dart';
part 'package:osltestcubit/Widgets/custem_textfaild/animated_textfield.dart';


part 'package:osltestcubit/Variable/Var.dart';

part 'package:osltestcubit/Repository/sprint/sprint_data_repository.dart';
part 'package:osltestcubit/Repository/course/add_course_repository.dart';
part 'package:osltestcubit/Repository/course/all_courses_repository.dart';
part 'package:osltestcubit/Repository/course/delete_course_repository.dart';
part 'package:osltestcubit/Repository/course/update_course_repository.dart';


part 'package:osltestcubit/cubit/sprint/get_data_from_sprint/sprint_data_cubit.dart';
part 'package:osltestcubit/cubit/course/add_course/add_course_cubit.dart';
part 'package:osltestcubit/cubit/course/delete_course/delete_course_cubit.dart';
part 'package:osltestcubit/cubit/course/get_all_courses/all_courses_cubit.dart';
part 'package:osltestcubit/cubit/course/update_course/update_course_cubit.dart';


part '../../Widgets/button.dart';
part '../../Widgets/cards.dart';
part '../../Widgets/navbar.dart';
part '../../Widgets/textfaild.dart';







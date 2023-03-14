import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'dart:ui' as ui;
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:osltestcubit/cubit/sprint/add/add_sprint_state.dart';
import 'package:osltestcubit/cubit/sprint/delete/delete_sprint_state.dart';
import 'package:osltestcubit/cubit/sprint/update/update_sprint_state.dart';
import 'package:osltestcubit/cubit/user/delete/delete_user_state.dart';
import 'package:osltestcubit/data/models/sprint.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'dart:convert';
import 'package:html/parser.dart' show parse;
import 'package:image_picker/image_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:osltestcubit/cubit/auth/signup/signup_state.dart';
import 'package:osltestcubit/cubit/user/update/update_state.dart';
import 'package:osltestcubit/data/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:osltestcubit/cubit/course/delete_course/delete_course_state.dart';
import 'package:osltestcubit/cubit/course/delete_course/delete_course_state.dart';
import 'package:osltestcubit/cubit/course/update_course/update_course_stete.dart';
import 'package:osltestcubit/cubit/course/add_course/add_course_state.dart';
import 'package:osltestcubit/data/models/course.dart';

import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

part 'package:osltestcubit/ui/readme_file_data.dart';

part 'package:osltestcubit/ui/auth/auth_page.dart';

part 'package:osltestcubit/ui/auth/update_profile/update_profile.dart';

part 'package:osltestcubit/ui/auth/signin/sign_in.dart';

part 'package:osltestcubit/ui/auth/user/profile.dart';

part 'package:osltestcubit/ui/auth/user/all_users_information.dart';

part 'package:osltestcubit/ui/auth/user/profil_text_widget.dart';

part 'package:osltestcubit/ui/screens/home_screen.dart';

part 'package:osltestcubit/ui/custem_textfaild/utils.dart';

part 'package:osltestcubit/ui/lists/list_courses.dart';

part 'package:osltestcubit/ui/lists/list_users.dart';

part 'package:osltestcubit/ui/lists/list_sprints.dart';

part 'package:osltestcubit/ui/custem_textfaild/animated_textfield.dart';

part 'package:osltestcubit/variable/var.dart';

part 'package:osltestcubit/variable/url.dart';

part 'package:osltestcubit/data/repository/course/add_course_repository.dart';

part 'package:osltestcubit/data/repository/course/all_courses_repository.dart';

part 'package:osltestcubit/data/repository/course/delete_course_repository.dart';

part 'package:osltestcubit/data/repository/course/update_course_repository.dart';

part 'package:osltestcubit/data/repository/auth/signin/signin_repository.dart';

part 'package:osltestcubit/data/repository/auth/signup/signup_repository.dart';

part 'package:osltestcubit/data/repository/auth/user/get_me_repository.dart';

part 'package:osltestcubit/data/repository/auth/user/update_user_repository.dart';

part 'package:osltestcubit/data/repository/auth/user/all_users_repository.dart';

part 'package:osltestcubit/data/repository/auth/user/get_user_repository.dart';

part 'package:osltestcubit/data/repository/auth/user/delete_user_repository.dart';

part 'package:osltestcubit/data/repository/sprint/all_sprint_repository.dart';

part 'package:osltestcubit/data/repository/sprint/add_sprint_repository.dart';

part 'package:osltestcubit/data/repository/sprint/update_sprint_repository.dart';

part 'package:osltestcubit/data/repository/sprint/delete_sprint_repository.dart';

part 'package:osltestcubit/cubit/course/add_course/add_course_cubit.dart';

part 'package:osltestcubit/cubit/course/delete_course/delete_course_cubit.dart';

part 'package:osltestcubit/cubit/course/get_all_courses/all_courses_cubit.dart';

part 'package:osltestcubit/cubit/course/update_course/update_course_cubit.dart';

part 'package:osltestcubit/cubit/course/get_all_courses/all_courses_state.dart';

part 'package:osltestcubit/cubit/sprint/all_sprints/all_sprint_cubit.dart';

part 'package:osltestcubit/cubit/sprint/all_sprints/all_sprint_state.dart';

part 'package:osltestcubit/cubit/sprint/add/add_sprint_cubit.dart';

part 'package:osltestcubit/cubit/sprint/update/update_sprint_cubit.dart';

part 'package:osltestcubit/cubit/sprint/delete/delete_sprint_cubit.dart';

part 'package:osltestcubit/cubit/auth/signin/signin_state.dart';

part 'package:osltestcubit/cubit/auth/signin/signin_cubit.dart';

part 'package:osltestcubit/cubit/user/get_all_users/get_all_users_state.dart';

part 'package:osltestcubit/cubit/user/get_all_users/get_all_users_cubit.dart';

part 'package:osltestcubit/cubit/user/delete/delete_user_cubit.dart';

part 'package:osltestcubit/cubit/auth/signup/signup_cubit.dart';

part 'package:osltestcubit/cubit/user/profil/get_me_cubit.dart';

part 'package:osltestcubit/cubit/user/profil/get_me_state.dart';

part 'package:osltestcubit/cubit/user/get_user/get_user_cubit.dart';

part 'package:osltestcubit/cubit/user/get_user/get_user_state.dart';

part 'package:osltestcubit/cubit/user/update/update_cubit.dart';

part 'package:osltestcubit/utils/button.dart';

part 'package:osltestcubit/utils/navbar.dart';

part 'package:osltestcubit/utils/custom_circular_progress_bar.dart';

part 'package:osltestcubit/ui/dialog/custom_dialog.dart';

part 'package:osltestcubit/ui/dialog/dismissed.dart';

part 'package:osltestcubit/ui/dialog/cancel.dart';

part 'package:osltestcubit/ui/dialog/container/course/update_course_dialog.dart';

part 'package:osltestcubit/ui/dialog/container/course/delete_course_dialog.dart';

part 'package:osltestcubit/ui/dialog/container/sprint/update_sprint_dialog.dart';

part 'package:osltestcubit/ui/dialog/container/sprint/delete_sprint_dialog.dart';

part 'package:osltestcubit/ui/dialog/container/user/update_user_dialog.dart';

part 'package:osltestcubit/ui/dialog/container/user/delete_user_dialog.dart';

part 'package:osltestcubit/utils/textfaild.dart';

part 'package:osltestcubit/utils/navigator_service.dart';

part 'package:osltestcubit/ui/cards/course.dart';

part 'package:osltestcubit/ui/cards/user.dart';

part 'package:osltestcubit/ui/floating_action_button/custom_floating_button.dart';

part 'package:osltestcubit/ui/floating_action_button/widgets/course/add_course.dart';

part 'package:osltestcubit/ui/floating_action_button/widgets/sprint/add_sprint.dart';

part 'package:osltestcubit/ui/cards/sprint.dart';

part 'package:osltestcubit/ui/lists/user_text_card.dart';

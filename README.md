# osltestcubit

A project ODC.
<p align="start">
<img src="https://img.shields.io/github/last-commit/odc-student/learning-management-system-mobile/feat-1?label=Last%20commit">
</p>


## Architecture:

    Bloc Cubit


## Plugin :

      dependencies:
         cupertino_icons: ^1.0.2
         font_awesome_flutter: ^10.3.0
         image_picker: ^0.8.6+1
         flutter_image_compress: ^0.7.0
         html:
         flutter_html:
         hydrated_bloc: ^9.1.0
         flutter_bloc: ^8.1.2
         equatable: ^2.0.5
         flutter_animation_progress_bar: ^2.3.1
         simple_circular_progress_bar: ^1.0.2
         awesome_dialog: ^3.0.2
         shared_preferences:


## Screenshots


## Directory Structure (Cubit version)

[📂lib](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib)   </br>
│───[main.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/main.dart)     </br>
│───[📂cubit](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit)     </br>
│       │───[📂auth](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth)   </br>
│       │       │──[📂signin](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signin)   </br>
│       │       │       │───[signin_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signin/signin_cubit.dart)   </br>
│       │       │       └───[signin_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signin/signin_state.dart)   </br>
│       │       └──[📂signup](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signup)   </br>
│       │              │───[signup_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signup/signup_cubit.dart)   </br>
│       │              └───[signup_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signup/signup_state.dart)   </br>
│       │───[📂course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course)   </br>
│       │       │──[📂add_course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/add_course)   </br>
│       │       │       │───[add_course_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/add_course/add_course_cubit.dart)   </br>
│       │       │       └───[add_course_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/add_course/add_course_state.dart)   </br>
│       │       │──[📂delete_course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/delete_course)   </br>
│       │       │       │───[delete_course_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/delete_course/delete_course_cubit.dart)   </br>
│       │       │       └───[delete_course_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/delete_course/delete_course_state.dart)   </br>
│       │       │──[📂get_all_course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/get_all_course)   </br>
│       │       │       │───[all_courses_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/get_all_course/get_all_courses_cubit.dart)   </br>
│       │       │       │───[all_courses_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/get_all_course/get_all_courses_state.dart)   </br>
│       │       │──[📂update_course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/update_course)   </br>
│       │          |───[update_course_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/update_course/update_course_cubit.dart)   </br>
│       │          └───[update_courses_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/update_courseupdate_course_state.dart)   </br>
│       │───[📂instructor]  </br>
│       │───[📂onboarder]  </br>
│       │───[📂quiz]  </br>
│       │───[📂reclamation]  </br>
│       │───[📂sprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint)   </br>
│       │       │───[📂add_sprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/add_sprint)   </br>
│       │       │       │───[add_sprint_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/add_sprint/add_sprint_cubit.dart)   </br>
│       │       │       └───[add_sprint_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/add_sprint/add_sprint_state.dart)   </br>
│       │       │───[📂all_sprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/all_sprint)   </br>
│       │       │       │───[all_sprint_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/all_sprint/all_sprint_cubit.dart)   </br>
│       │       │       └───[all_sprint_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/all_sprint/all_sprint_state.dart)   </br>
│       │       │───[📂delete_sprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/delete_sprint)   </br>
│       │       │       │───[delete_sprint_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/delete_sprint/delete_sprint_cubit.dart)   </br>
│       │       │       └───[delete_sprint_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/delete_sprint/delete_sprint_state.dart)   </br>
│       │       │───[📂get_data_from_sprint]  </br>
│       │       │───[📂update_sprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/update_sprint)   </br>
│       │           |───[update_sprint_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/update_sprint/update_sprint_cubit.dart)   </br>
│       │       └───[update_sprint_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/update_sprint/update_sprint_state.dart)   </br>
│       │───[📂student]  </br>
│       │───[📂user](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user)   </br>
│           |───[📂delete](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/delete)   </br>
│       │           |───[update_user_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/delete/delete_user_cubit.dart)   </br>
│       │       └───[update_user_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/delete/delete_user_state.dart)   </br>
│           |───[📂get_all_users](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/get_all_users)   </br>
│       │           |───[get_all_users_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/get_all_users/get_all_users_cubit.dart)   </br>
│       │       └───[get_all_users_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/get_all_users/get_all_users_state.dart)   </br>
│           |───[📂get_user](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/get_user)   </br>
│       │           |───[get_user_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/get_user/get_user_cubit.dart)   </br>
│       │       └───[get_user_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/get_user/get_user_state.dart)   </br>
│           |───[📂profile](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/profile)   </br>
│       │           |───[get_me_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/profile/get_me_cubit.dart)   </br>
│       │       └───[get_me_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/profile/get_me_state.dart)   </br>
│       └───[📂update](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/update)   </br>
│       │           |───[update_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/update/update_cubit.dart)   </br>
│       │       └───[update_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/update/update_state.dart)   </br>
│───[📂data](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data)   </br>
│       │───[📂models](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/models)  </br>
│       │       │───[cour.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/models/course.dart)   </br>
│       │       │───[sprint.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/models/sprint.dart)   </br>
│       │       │───[user.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/models/user.dart)   </br>
│       │───[📂repository](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/repository)   </br>
│       │       │───[📂auth](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/repository/auth)   </br>
│       │       │       │───[📂signin](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/repository/auth/signin)   </br>
│       │       │       │       └───[signin_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/auth/signin/signin_repository.dart)   </br>
│       │       │       │───[📂signup](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/repository/auth/signup)   </br>
│       │       │       │       │───[signup_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/auth/signup/signup_repository.dart)   </br>
│       │       │       └───[📂user](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/repository/auth/user)   </br>
│       │       │       └───[all_users_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/auth/user/all_users_repository.dart)   </br>
│       │       │       └───[delete_user_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/auth/user/delete_user_repository.dart)   </br>
│       │       │       └───[get_me_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/auth/user/get_me_repository.dart)   </br>
│       │       │       └───[get_user_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/auth/user/get_user_repository.dart)  </br>
│       │       │       └───[update_user_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/auth/user/update_user_repository.dart)   </br>
│       │       │───[📂course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/repository/course) </br>
│       │       │       │──[add_course_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/course/add_course_repository.dart)   </br>
│       │       │       │──[delete_course_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/course/delete_course_repository.dart)   </br>
│       │       │       │──[all_course_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/course/all_courses_repository.dart)   </br>
│       │       │       │──[update_course_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/course/update_course_repository.dart)   </br>
│       │       │───[📂instructor]   </br>
│       │       │───[📂onboarder]   </br>
│       │       │───[📂quiz]   </br>
│       │       │───[📂reclamation]  </br>
│       │       │───[📂sprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/repository/sprint)  </br>
│       │       │       │───[add_sprint_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/sprint/add_sprint_repository.dart)  </br>
│       │       │       │───[all_sprint_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/sprint/all_sprint_repository.dart)  </br>
│       │       │       │───[delete_sprint_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/sprint/delete_sprint_repository.dart)  </br>
│       │       │       │───[update_sprint_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/sprint/update_sprint_repository.dart)  </br>
│       │       │───[📂student]  </br>
│──[─📂ui](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui)  </br>
│       │───[📂auth](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/auth)  </br>
│       │       │───[📂signin](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/auth/signin)  </br>
│       │       │       │───[SignIn.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/auth/signin/sign_in.dart)  </br>
│       │       │───[📂update_profile](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/auth/update_profile)  </br>
│       │       │       │───[update_profile.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/auth/update_profile/update_profile.dart)  </br>
│       │       │───[📂user](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/auth/user)  </br>
│       │       │       │───[all_users_information.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/auth/user/all_users_information.dart)  </br>
│       │       │       │───[profil_text_widget.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/auth/user/profil_text_widget.dart)  </br>
│       │       │       │───[profile.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/auth/user/profile.dart)  </br>
│       │       │───[AuthPage.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/auth/auth_page.dart)  </br>
│       │───[📂onborderUI]  </br>
│       │       │───[onborder_courses.dart]  </br>
│       │───[course.dart]  </br>
│       │───[Listcourses.dart]  </br>
│       │───[update_course.dart]  </br>
│       │───[📂cards](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/cards)  </br>
│       │       │──[course.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/cards/course.dart)  </br>
│       │       │──[sprint.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/cards/sprint.dart)  </br>
│       │       └──[user.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/cards/user.dart)  </br>
│       │───[📂custem_textfaild](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/custem_textfaild)  </br>
│       │       │──[animated_textfield.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/custem_textfaild/animated_textfield.dart) </br>
│       │       └──[utils.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/custem_textfaild/utils.dart)  </br>
│       │───[📂dialog](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/dialog)  </br>
│       │       │───[📂conatiner](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/dialog/container)  </br>
│       │       │       └───[📂course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/dialog/container/course)  </br>
│       │       │       └───[delete_course_dialog.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/container/course/delete_course_dialog.dart)  </br>
│       │       │       └───[update_course_dialo.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/container/course/update_course_dialog.dart)  </br>
│       │       │       └───[📂sprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/dialog/container/sprint)  </br>
│       │       │       └───[delete_sprint_dialog.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/container/sprint/delete_sprint_dialog.dart)  </br>
│       │       │       └───[update_sprint_dialog.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/container/sprint/update_sprint_dialog.dart)  </br>
│       │       │       └───[📂user](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/dialog/container/user)  </br>
│       │       │       └───[delete_user_dialog.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/container/user/delete_user_dialog.dart)  </br>
│       │       │       └───[update_user_dialog.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/container/user/update_user_dialog.dart)  </br>
│       │       │──[cancel.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/cancel.dart)  </br>
│       │       │──[custom_dialog.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/custom_dialog.dart)  </br>
│       │       │──[dismissed.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/dismissed.dart)  </br>
│       │───[📂floating_action_button](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/floating_action_button)  </br>
│       │       │───[📂widgets](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/floating_action_button/widgets)  </br>
│       │       │       └───[📂course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/floating_action_button/widgets/course)  </br>
│       │       │       └───[add_course.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/floating_action_button/widgets/course/add_course.dart)  </br>
│       │       │       └───[📂sprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/floating_action_button/widgets/sprint)  </br>
│       │       │       └───[add_sprint.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/floating_action_button/widgets/sprint/add_sprint.dart)  </br>
│       │       │──[custom_floating_button.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/floating_action_button/custom_floating_button.dart)  </br>
│       │───[📂lists](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/lists)  </br>
│       │       │──[list_course.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/lists/list_courses.dart)  </br>
│       │       │──[list_sprint.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/lists/list_sprints.dart)  </br>
│       │       └──[list_user.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/lists/list_users.dart)  </br>
│       │       └──[user_text_card.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/lists/user_text_card.dart)  </br>
│       │───[📂screens](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/screens)  </br>
│       │       │──[home_screen.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/screens/home_screen.dart)  </br>
│       │───[Listcourses.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/Listcourses.dart)  </br>
│       │───[readme_file_data.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/readme_file_data.dart)  </br>
│───[📂utils](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/utils)  </br>
│       │───[ImagePickerbase64.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/utils/ImagePickerbase64.dart)  </br>
│       │───[button.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/utils/button.dart)  </br>
│       │───[custom_circular_progress_bar.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/utils/custom_circular_progress_bar.dart)  </br>
│       │───[navbar.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/utils/navbar.dart)  </br>
│       │───[navigator_service.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/utils/navigator_service.dart)  </br>
│       │───[textfaild.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/utils/textfaild.dart)  </br>
└───[📂variable](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/variable)  </br>
       |───[imports.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/variable/imports.dart)  // all import is here   </br>
       |───[url.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/variable/url.dart)     // all import is here    </br>
       └───[var.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/variable/var.dart)      // all const is here    </br>


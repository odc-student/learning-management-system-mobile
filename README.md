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

[πlib](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib)   </br>
ββββ[main.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/main.dart)     </br>
ββββ[πcubit](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit)     </br>
β       ββββ[πauth](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth)   </br>
β       β       βββ[πsignin](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signin)   </br>
β       β       β       ββββ[signin_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signin/signin_cubit.dart)   </br>
β       β       β       ββββ[signin_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signin/signin_state.dart)   </br>
β       β       βββ[πsignup](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signup)   </br>
β       β              ββββ[signup_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signup/signup_cubit.dart)   </br>
β       β              ββββ[signup_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signup/signup_state.dart)   </br>
β       ββββ[πcourse](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course)   </br>
β       β       βββ[πadd_course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/add_course)   </br>
β       β       β       ββββ[add_course_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/add_course/add_course_cubit.dart)   </br>
β       β       β       ββββ[add_course_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/add_course/add_course_state.dart)   </br>
β       β       βββ[πdelete_course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/delete_course)   </br>
β       β       β       ββββ[delete_course_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/delete_course/delete_course_cubit.dart)   </br>
β       β       β       ββββ[delete_course_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/delete_course/delete_course_state.dart)   </br>
β       β       βββ[πget_all_course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/get_all_course)   </br>
β       β       β       ββββ[all_courses_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/get_all_course/get_all_courses_cubit.dart)   </br>
β       β       β       ββββ[all_courses_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/get_all_course/get_all_courses_state.dart)   </br>
β       β       βββ[πupdate_course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/update_course)   </br>
β       β          |βββ[update_course_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/update_course/update_course_cubit.dart)   </br>
β       β          ββββ[update_courses_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/update_courseupdate_course_state.dart)   </br>
β       ββββ[πinstructor]  </br>
β       ββββ[πonboarder]  </br>
β       ββββ[πquiz]  </br>
β       ββββ[πreclamation]  </br>
β       ββββ[πsprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint)   </br>
β       β       ββββ[πadd_sprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/add_sprint)   </br>
β       β       β       ββββ[add_sprint_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/add_sprint/add_sprint_cubit.dart)   </br>
β       β       β       ββββ[add_sprint_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/add_sprint/add_sprint_state.dart)   </br>
β       β       ββββ[πall_sprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/all_sprint)   </br>
β       β       β       ββββ[all_sprint_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/all_sprint/all_sprint_cubit.dart)   </br>
β       β       β       ββββ[all_sprint_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/all_sprint/all_sprint_state.dart)   </br>
β       β       ββββ[πdelete_sprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/delete_sprint)   </br>
β       β       β       ββββ[delete_sprint_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/delete_sprint/delete_sprint_cubit.dart)   </br>
β       β       β       ββββ[delete_sprint_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/delete_sprint/delete_sprint_state.dart)   </br>
β       β       ββββ[πget_data_from_sprint]  </br>
β       β       ββββ[πupdate_sprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/update_sprint)   </br>
β       β           |βββ[update_sprint_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/update_sprint/update_sprint_cubit.dart)   </br>
β       β       ββββ[update_sprint_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/sprint/update_sprint/update_sprint_state.dart)   </br>
β       ββββ[πstudent]  </br>
β       ββββ[πuser](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user)   </br>
β           |βββ[πdelete](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/delete)   </br>
β       β           |βββ[update_user_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/delete/delete_user_cubit.dart)   </br>
β       β       ββββ[update_user_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/delete/delete_user_state.dart)   </br>
β           |βββ[πget_all_users](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/get_all_users)   </br>
β       β           |βββ[get_all_users_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/get_all_users/get_all_users_cubit.dart)   </br>
β       β       ββββ[get_all_users_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/get_all_users/get_all_users_state.dart)   </br>
β           |βββ[πget_user](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/get_user)   </br>
β       β           |βββ[get_user_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/get_user/get_user_cubit.dart)   </br>
β       β       ββββ[get_user_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/get_user/get_user_state.dart)   </br>
β           |βββ[πprofile](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/profile)   </br>
β       β           |βββ[get_me_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/profile/get_me_cubit.dart)   </br>
β       β       ββββ[get_me_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/profile/get_me_state.dart)   </br>
β       ββββ[πupdate](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/update)   </br>
β       β           |βββ[update_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/update/update_cubit.dart)   </br>
β       β       ββββ[update_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/user/update/update_state.dart)   </br>
ββββ[πdata](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data)   </br>
β       ββββ[πmodels](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/models)  </br>
β       β       ββββ[cour.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/models/course.dart)   </br>
β       β       ββββ[sprint.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/models/sprint.dart)   </br>
β       β       ββββ[user.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/models/user.dart)   </br>
β       ββββ[πrepository](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/repository)   </br>
β       β       ββββ[πauth](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/repository/auth)   </br>
β       β       β       ββββ[πsignin](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/repository/auth/signin)   </br>
β       β       β       β       ββββ[signin_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/auth/signin/signin_repository.dart)   </br>
β       β       β       ββββ[πsignup](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/repository/auth/signup)   </br>
β       β       β       β       ββββ[signup_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/auth/signup/signup_repository.dart)   </br>
β       β       β       ββββ[πuser](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/repository/auth/user)   </br>
β       β       β       ββββ[all_users_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/auth/user/all_users_repository.dart)   </br>
β       β       β       ββββ[delete_user_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/auth/user/delete_user_repository.dart)   </br>
β       β       β       ββββ[get_me_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/auth/user/get_me_repository.dart)   </br>
β       β       β       ββββ[get_user_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/auth/user/get_user_repository.dart)  </br>
β       β       β       ββββ[update_user_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/auth/user/update_user_repository.dart)   </br>
β       β       ββββ[πcourse](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/repository/course) </br>
β       β       β       βββ[add_course_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/course/add_course_repository.dart)   </br>
β       β       β       βββ[delete_course_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/course/delete_course_repository.dart)   </br>
β       β       β       βββ[all_course_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/course/all_courses_repository.dart)   </br>
β       β       β       βββ[update_course_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/course/update_course_repository.dart)   </br>
β       β       ββββ[πinstructor]   </br>
β       β       ββββ[πonboarder]   </br>
β       β       ββββ[πquiz]   </br>
β       β       ββββ[πreclamation]  </br>
β       β       ββββ[πsprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/data/repository/sprint)  </br>
β       β       β       ββββ[add_sprint_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/sprint/add_sprint_repository.dart)  </br>
β       β       β       ββββ[all_sprint_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/sprint/all_sprint_repository.dart)  </br>
β       β       β       ββββ[delete_sprint_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/sprint/delete_sprint_repository.dart)  </br>
β       β       β       ββββ[update_sprint_repository.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/data/repository/sprint/update_sprint_repository.dart)  </br>
β       β       ββββ[πstudent]  </br>
βββ[βπui](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui)  </br>
β       ββββ[πauth](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/auth)  </br>
β       β       ββββ[πsignin](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/auth/signin)  </br>
β       β       β       ββββ[SignIn.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/auth/signin/sign_in.dart)  </br>
β       β       ββββ[πupdate_profile](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/auth/update_profile)  </br>
β       β       β       ββββ[update_profile.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/auth/update_profile/update_profile.dart)  </br>
β       β       ββββ[πuser](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/auth/user)  </br>
β       β       β       ββββ[all_users_information.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/auth/user/all_users_information.dart)  </br>
β       β       β       ββββ[profil_text_widget.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/auth/user/profil_text_widget.dart)  </br>
β       β       β       ββββ[profile.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/auth/user/profile.dart)  </br>
β       β       ββββ[AuthPage.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/auth/auth_page.dart)  </br>
β       ββββ[πonborderUI]  </br>
β       β       ββββ[onborder_courses.dart]  </br>
β       ββββ[course.dart]  </br>
β       ββββ[Listcourses.dart]  </br>
β       ββββ[update_course.dart]  </br>
β       ββββ[πcards](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/cards)  </br>
β       β       βββ[course.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/cards/course.dart)  </br>
β       β       βββ[sprint.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/cards/sprint.dart)  </br>
β       β       βββ[user.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/cards/user.dart)  </br>
β       ββββ[πcustem_textfaild](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/custem_textfaild)  </br>
β       β       βββ[animated_textfield.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/custem_textfaild/animated_textfield.dart) </br>
β       β       βββ[utils.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/custem_textfaild/utils.dart)  </br>
β       ββββ[πdialog](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/dialog)  </br>
β       β       ββββ[πconatiner](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/dialog/container)  </br>
β       β       β       ββββ[πcourse](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/dialog/container/course)  </br>
β       β       β       ββββ[delete_course_dialog.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/container/course/delete_course_dialog.dart)  </br>
β       β       β       ββββ[update_course_dialo.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/container/course/update_course_dialog.dart)  </br>
β       β       β       ββββ[πsprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/dialog/container/sprint)  </br>
β       β       β       ββββ[delete_sprint_dialog.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/container/sprint/delete_sprint_dialog.dart)  </br>
β       β       β       ββββ[update_sprint_dialog.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/container/sprint/update_sprint_dialog.dart)  </br>
β       β       β       ββββ[πuser](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/dialog/container/user)  </br>
β       β       β       ββββ[delete_user_dialog.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/container/user/delete_user_dialog.dart)  </br>
β       β       β       ββββ[update_user_dialog.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/container/user/update_user_dialog.dart)  </br>
β       β       βββ[cancel.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/cancel.dart)  </br>
β       β       βββ[custom_dialog.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/custom_dialog.dart)  </br>
β       β       βββ[dismissed.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/dialog/dismissed.dart)  </br>
β       ββββ[πfloating_action_button](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/floating_action_button)  </br>
β       β       ββββ[πwidgets](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/floating_action_button/widgets)  </br>
β       β       β       ββββ[πcourse](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/floating_action_button/widgets/course)  </br>
β       β       β       ββββ[add_course.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/floating_action_button/widgets/course/add_course.dart)  </br>
β       β       β       ββββ[πsprint](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/floating_action_button/widgets/sprint)  </br>
β       β       β       ββββ[add_sprint.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/floating_action_button/widgets/sprint/add_sprint.dart)  </br>
β       β       βββ[custom_floating_button.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/floating_action_button/custom_floating_button.dart)  </br>
β       ββββ[πlists](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/lists)  </br>
β       β       βββ[list_course.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/lists/list_courses.dart)  </br>
β       β       βββ[list_sprint.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/lists/list_sprints.dart)  </br>
β       β       βββ[list_user.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/lists/list_users.dart)  </br>
β       β       βββ[user_text_card.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/lists/user_text_card.dart)  </br>
β       ββββ[πscreens](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/ui/screens)  </br>
β       β       βββ[home_screen.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/screens/home_screen.dart)  </br>
β       ββββ[Listcourses.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/Listcourses.dart)  </br>
β       ββββ[readme_file_data.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/ui/readme_file_data.dart)  </br>
ββββ[πutils](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/utils)  </br>
β       ββββ[ImagePickerbase64.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/utils/ImagePickerbase64.dart)  </br>
β       ββββ[button.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/utils/button.dart)  </br>
β       ββββ[custom_circular_progress_bar.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/utils/custom_circular_progress_bar.dart)  </br>
β       ββββ[navbar.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/utils/navbar.dart)  </br>
β       ββββ[navigator_service.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/utils/navigator_service.dart)  </br>
β       ββββ[textfaild.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/utils/textfaild.dart)  </br>
ββββ[πvariable](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/variable)  </br>
       |βββ[imports.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/variable/imports.dart)  // all import is here   </br>
       |βββ[url.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/variable/url.dart)     // all import is here    </br>
       ββββ[var.dart](https://github.com/odc-student/learning-management-system-mobile/blob/feat-1/lib/variable/var.dart)      // all const is here    </br>


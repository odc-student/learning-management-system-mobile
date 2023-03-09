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

[📂lib](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib) </br>
│───[main.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/main.dart)   </br>
│───[📂cubit](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit)   </br>
│   │───[📂auth](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth) </br>
│   │   │──[📂signin](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signin) </br>
│   │   │   │───[signin_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signin/signin_cubit.dart) </br>
│   │   │   └───[signin_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signin/signin_state.dart) </br>
│   │   └──[📂signup](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signup) </br>
│   │       │───[signup_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signup/signup_cubit.dart) </br>
│   │       └───[signup_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/auth/signup/signup_state.dart) </br>
│   │───[📂course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course) </br>
│   │   │──[📂add_course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/add_course) </br>
│   │   │   │───[add_course_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/add_course/add_course_cubit.dart) </br>
│   │   │   └───[add_course_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/add_course/add_course_state.dart) </br>
│   │   │──[📂delete_course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/delete_course) </br>
│   │   │   │───[delete_course_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/delete_course/delete_course_cubit.dart) </br>
│   │   │   └───[delete_course_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/delete_course/delete_course_state.dart) </br>
│   │   │──[📂get_all_course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/get_all_course) </br>
│   │   │   │───[all_courses_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/get_all_course/get_all_courses_cubit.dart) </br>
│   │   │   └───[all_courses_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/get_all_course/get_all_courses_state.dart) </br>
│   │   └──[📂update_course](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/update_course) </br>
│   │       │───[update_course_cubit.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/update_course/update_course_cubit.dart) </br>
│   │       └───[update_courses_state.dart](https://github.com/odc-student/learning-management-system-mobile/tree/feat-1/lib/cubit/course/update_courseupdate_course_state.dart) </br>
│   │───[📂instructor]</br>
│   │───[📂onboarder]</br>
│   │───[📂quiz]</br>
│   │───[📂reclamation]</br>
│   │───[📂sprint]</br>
│   │   │───[📂all_sprint]</br>
│   │   │    │───[all_sprint_cubit.dart]</br>
│   │   │    └───[all_sprint_state.dart]</br>
│   │   └───[📂get_data_from_sprint]</br>
│   │───[📂student]</br>
│   └───[📂user]</br>
│        │───[📂delete]</br>
│        │───[📂get_all_users]</br>
│        │───[📂get_user]</br>
│        │───[📂profile]</br>
│        └───[📂update]</br>
│───[📂data]</br>
│   │───[📂models]</br>
│   │   │───[cour.dart]</br>
│   │   │───[sprint.dart]</br>
│   │   └───[user.dart]</br>
│   │───[📂repository]</br>
│   │   │───[📂auth]</br>
│   │   │    │───[📂signin]</br>
│   │   │    │    └───[signin_repository.dart]</br>
│   │   │    │───[📂signup]</br>
│   │   │    │   └───[signup_repository.dart]</br>
│   │   │    └───[📂user]</br>
│   │   │        └───[all_users_repository.dart]</br>
│   │   │        └───[delete_user_repository.dart]</br>
│   │   │        └───[get_me_repository.dart]</br>
│   │   │        └───[get_user_repository.dart]</br>
│   │   │        └───[update_user_repository.dart]</br>
│   │   │───[📂course]</br>
│   │   │   │──[add_course_repository.dart]</br>
│   │   │   │──[delete_course_repository.dart]</br>
│   │   │   │──[get_all_course_repository.dart]</br>
│   │   │   └──[update_course_repository.dart]</br>
│   │   │───[📂instructor]</br>
│   │   │───[📂onboarder]</br>
│   │   │───[📂quiz]</br>
│   │   │───[📂reclamation]</br>
│   │   │───[📂sprint]</br>
│   │   │   └───[all_sprint_repository.dart]</br>
│   │   └───[📂student]</br>
│──[─📂ui]</br>
│   │───[📂auth]</br>
│   │   │───[📂signin]</br>
│   │   │   └───[SignIn.dart]</br>
│   │   │───[📂signup]</br>
│   │   │   └───[SignUp.dart]</br>
│   │   │───[📂signup]</br>
│   │   │   └───[SignUp.dart]</br>
│   │   │───[📂user]</br>
│   │   │   └───[profile.dart]</br>
│   │   └───[AuthPage.dart]</br>
│   │───[📂onborderUI]</br>
│   │   └───[onborder_courses.dart]</br>
│   │───[course.dart]</br>
│   │───[Listcourses.dart]</br>
│   └───[update_course.dart]</br>
│───[📂utils]</br>
│   │───[📂cards]</br>
│   │    │──[course.dart]</br>
│   │    │──[sprint.dart]</br>
│   │    └──[user.dart]</br>
│   │───[📂custem_textfaild]</br>
│   │    │──[animated_textfield.dart]v
│   │    └──[utils.dart]</br>
│   │───[button.dart]</br>
│   │───[cards.dart]</br>
│   │───[coursecard.dart]</br>
│   │───[ImagePickerbase64.dart]</br>
│   │───[navbar.dart]</br>
│   │───[navigator_service.dart]</br>
│   └───[textfaild.dart]</br>
└───[📂variable]</br>
    │───[imports.dart]  // all import is here </br>
    │───[url.dart]     // all import is here  </br>
    └───[var.dart]      // all const is here  </br>


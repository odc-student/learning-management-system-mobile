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
│   │───[📂instructor]
│   │───[📂onboarder]
│   │───[📂quiz]
│   │───[📂reclamation]
│   │───[📂sprint]
│   │   │───[📂all_sprint]
│   │   │    │───[all_sprint_cubit.dart]
│   │   │    └───[all_sprint_state.dart]
│   │   └───[📂get_data_from_sprint]
│   │───[📂student]
│   └───[📂user]
│        │───[📂delete]
│        │───[📂get_all_users]
│        │───[📂get_user]
│        │───[📂profil]
│        └───[📂update]
│───[📂data]
│   │───[📂models]
│   │   │───[cour.dart]
│   │   │───[sprint.dart]
│   │   └───[user.dart]
│   │───[📂repository]
│   │   │───[📂auth]
│   │   │    │───[📂signin]
│   │   │    │    └───[signin_repository.dart]
│   │   │    │───[📂signup]
│   │   │    │   └───[signup_repository.dart]
│   │   │    └───[📂user]
│   │   │        └───[all_users_repository.dart]
│   │   │        └───[delete_user_repository.dart]
│   │   │        └───[get_me_repository.dart]
│   │   │        └───[get_user_repository.dart]
│   │   │        └───[update_user_repository.dart]
│   │   │───[📂course]
│   │   │   │──[add_course_repository.dart]
│   │   │   │──[delete_course_repository.dart]
│   │   │   │──[get_all_course_repository.dart]
│   │   │   └──[update_course_repository.dart]
│   │   │───[📂instructor]
│   │   │───[📂onboarder]
│   │   │───[📂quiz]
│   │   │───[📂reclamation]
│   │   │───[📂sprint]
│   │   │   └───[all_sprint_repository.dart]
│   │   └───[📂student]
│──[─📂ui]
│   │───[📂auth]
│   │   │───[📂signin]
│   │   │   └───[SignIn.dart]
│   │   │───[📂signup]
│   │   │   └───[SignUp.dart]
│   │   │───[📂signup]
│   │   │   └───[SignUp.dart]
│   │   │───[📂user]
│   │   │   └───[profile.dart]
│   │   └───[AuthPage.dart]
│   │───[📂onborderUI]
│   │   └───[onborder_courses.dart]
│   │───[course.dart]
│   │───[Listcourses.dart]
│   └───[update_course.dart]
│───[📂utils]
│   │───[📂cards]
│   │    │──[course.dart]
│   │    │──[sprint.dart]
│   │    └──[user.dart]
│   │───[📂custem_textfaild]
│   │    │──[animated_textfield.dart]
│   │    └──[utils.dart]
│   │───[button.dart]
│   │───[cards.dart]
│   │───[coursecard.dart]
│   │───[ImagePickerbase64.dart]
│   │───[navbar.dart]
│   │───[navigator_service.dart]
│   └───[textfaild.dart]
└───[📂variable]
    │───[imports.dart]  // all import is here
    │───[url.dart]     // all import is here
    └───[var.dart]      // all const is here


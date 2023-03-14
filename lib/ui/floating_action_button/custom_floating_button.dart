part of 'package:osltestcubit/variable/imports.dart';

Widget customActionButton(
    BuildContext context, Widget widgetActionButton, Function todoOnOK) {
  return FloatingActionButton(
    backgroundColor: odc,
    child: Icon(
      Icons.add,
      color: black,
    ),
    onPressed: () => AwesomeDialog(
      context: context,
      dialogType: DialogType.noHeader,
      width: double.infinity,
      buttonsBorderRadius: BorderRadius.all(
        Radius.circular(2),
      ),
      dismissOnTouchOutside: true,
      dismissOnBackKeyPress: false,
      onDismissCallback: (type) {},
      headerAnimationLoop: false,
      animType: AnimType.bottomSlide,
      title: homeScreenIndex == 0 ? 'Add Course' : 'Add User',
      body: widgetActionButton,
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: homeScreenIndex == 0
          ? () {
              todoOnOK();
            }
          : () {
              // Todo:fix signup User
            },
    ).show(),
  );
}

part of 'package:osltestcubit/variable/imports.dart';

Widget Profiletext(
  String text,
  String value,
) {
  return Row(
    children: [
      Text(
        text,
        style: TextStyle(color: odc),
      ), Spacer(),
      Text(
        value,
        style: TextStyle(color: white),
      ),
      SizedBox(height: 30,)

    ],
  );
}

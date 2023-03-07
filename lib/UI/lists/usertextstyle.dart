part of 'package:osltestcubit/variable/imports.dart';

Widget cardtext(
    String text1,
    String value1,
    String text,
    String value,
    ) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
       ' $text   $value ',
        style: TextStyle(color: white),
      ),
      Text(
        ' $text1  $value1',
        style: TextStyle(color: white),
      ),
      SizedBox(height: 30,)

    ],
  );
}

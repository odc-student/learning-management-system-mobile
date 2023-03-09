part of 'package:osltestcubit/variable/imports.dart';

Widget customCircularProgressBar(num activeSprint) {
  final double newValue = double.parse("$activeSprint");
  late ValueNotifier<double> valueNotifier;
  valueNotifier = ValueNotifier(0.0);
  valueNotifier.value = newValue;

  return SimpleCircularProgressBar(
    size: 80,
    backColor: white,
    valueNotifier: valueNotifier,
    maxValue: 100,
    backStrokeWidth: 5,
    progressStrokeWidth: 5,
    progressColors: const [odc],
    fullProgressColor: odc,
    mergeMode: true,
    onGetText: (double value) {
      return Text(
        ' ${value.toInt()}% ',
        style: TextStyle(color: white),
      );
    },
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CustomSlidable extends Slidable {
  CustomSlidable({
    Key? key,
    required Widget child,
    List<Widget>? actionPane,
    SlidableController? controller,
    Axis direction = Axis.horizontal,
    double actionExtentRatio = 0.25,
    bool closeOnScroll = true,
    bool enabled = true,
    bool fastCancel = false,
    bool keyBind = false,
    void Function(SlidableAction action)? onSlideAnimationChanged,
    void Function(SlidableAction action)? onSlideIsOpenChanged,

    Duration? actionCrossAxisAlignment,
    Color? actionBackgroundColor,
  }) : super(
    key: key,
    child: child,
    direction: direction,
    closeOnScroll: closeOnScroll,
    enabled: enabled,
  );

  @override
  Widget buildActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 4),
          child: SlidableAction(
            label: 'Delete',
            backgroundColor: Colors.red,
            icon: Icons.delete,
            onPressed: (BuildContext context) {  },
          ),

        ),
      ],
    );
  }

  @override
  Widget buildSecondaryActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 4),


        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CircularStructureWithWidgetsInside extends StatelessWidget {
  // ignore: inference_failure_on_uninitialized_variable
  // final action;
  final Color? theColor;
  final Widget? widget;

  // ignore: sort_constructors_first
  const CircularStructureWithWidgetsInside({
    super.key,
    // this.action,
    this.theColor = Colors.transparent,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(left: 13, bottom: 12, right: 13),
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
          color: theColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
          // border: Border.all(color: TheColors.gray)
        ),
        child: widget,
      ),
    );
  }
}

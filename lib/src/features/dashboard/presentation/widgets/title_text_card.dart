import 'package:flutter/material.dart';
import 'package:kcc/core/utils/colors.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

class TitleTextCard extends StatelessWidget {
  // ignore: inference_failure_on_uninitialized_variable
  // final action;
  final Color? theColor;
  final String? title;
  final String? text;

  // ignore: sort_constructors_first
  const TitleTextCard({
    super.key,
    // this.action,
    this.theColor = TheColors.darkYellow,
    this.title,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircularStructureWithWidgetsInside(
        theColor: TheColors.darkYellow,
        widget: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title!,
                  style: const TextStyle(
                    fontFamily: 'ChamLimp',
                    color: TheColors.white,
                    fontSize: 23,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text!,
                style: const TextStyle(
                  fontFamily: 'ChamLimp',
                  color: TheColors.white,
                  fontSize: 23,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

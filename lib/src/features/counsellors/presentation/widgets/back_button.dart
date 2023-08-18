// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcc/core/utils/colors.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

class theBackButton extends StatelessWidget {
  final Color? theColor;
  final String? textByButton;

  // ignore: sort_constructors_first
  const theBackButton({
    super.key,
    // this.action,
    this.theColor = TheColors.goldenYellow,
    this.textByButton = '',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              final router = GoRouter.of(context);
              if (router.canPop()) router.pop();
            },
            child: CircularStructureWithWidgetsInside(
              theColor: theColor,
              widget: const Icon(Icons.arrow_back),
            ),
          ),
        ),
        Text(
          textByButton!,
          style: const TextStyle(
            color: TheColors.black,
            fontFamily: 'LemonMilk',
            fontSize: 24,
          ),
        )
      ],
    );
  }
}

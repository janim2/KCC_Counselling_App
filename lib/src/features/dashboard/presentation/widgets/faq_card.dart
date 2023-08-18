import 'package:flutter/material.dart';
import 'package:kcc/core/utils/colors.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

class FAQCard extends StatelessWidget {
  // ignore: inference_failure_on_uninitialized_variable
  // final action;
  final Color? theColor;
  final String? image;
  final String? name;
  final String? address;

  // ignore: sort_constructors_first
  const FAQCard({
    super.key,
    // this.action,
    this.theColor = TheColors.darkYellow,
    this.image,
    this.name,
    this.address,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircularStructureWithWidgetsInside(
        theColor: TheColors.darkYellow,
        widget: Row(
          children: [
            // Container(
            //   height: 110,
            //   width: 100,
            //   padding: const EdgeInsets.all(18),
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage(image!),
            //     ),
            //     color: theColor,
            //     borderRadius: const BorderRadius.all(
            //       Radius.circular(50),
            //     ),
            //     border: Border.all(color: TheColors.goldenYellow),
            //   ),
            // ),
            Image.asset(
              image!,
              height: 100,
              width: 110,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: 150,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        name!,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontFamily: 'ChamLimp',
                          color: TheColors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.topLeft,
                    //   child: Text(
                    //     position!,
                    //     overflow: TextOverflow.ellipsis,
                    //     textAlign: TextAlign.start,
                    //     style: const TextStyle(
                    //       fontFamily: 'ChamLimp',
                    //       color: TheColors.white,
                    //       fontSize: 13,
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      height: 5,
                      color: TheColors.white,
                    ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        address!,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontFamily: 'ChamLimp',
                          color: TheColors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kcc/core/utils/colors.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

class CounsellorInfoCard extends StatelessWidget {
  // ignore: inference_failure_on_uninitialized_variable
  // final action;
  final Color? theColor;
  final String? image;
  final String? name;
  final String? position;
  final String? address;

  // ignore: sort_constructors_first
  const CounsellorInfoCard({
    super.key,
    // this.action,
    this.theColor = TheColors.darkYellow,
    this.image,
    this.name,
    this.position,
    this.address,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircularStructureWithWidgetsInside(
        theColor: TheColors.darkYellow,
        widget: Row(
          children: [
            Container(
              height: 110,
              width: 100,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image!),
                ),
                color: theColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                border: Border.all(color: TheColors.goldenYellow),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: SizedBox(
                width: 190,
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
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        position!,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontFamily: 'ChamLimp',
                          color: TheColors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
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
                          fontSize: 11,
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

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcc/core/utils/colors.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/images/bg2.jpg', // Replace with your image path
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          // Text on Top
          SafeArea(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/double_label.png', // Replace with your image path
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 100,
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, top: 16, right: 16),
                    child: Column(
                      children: [
                        Text(
                          'KCC',
                          style: TextStyle(
                            fontFamily: 'LemonMilk',
                            fontSize: 94,
                            fontWeight: FontWeight.bold,
                            color: TheColors.black,
                          ),
                        ),
                        Text(
                          'COUNSELLING APPLICATION',
                          style: TextStyle(
                            fontFamily: 'ChamLimp',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: TheColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                GestureDetector(
                  onTap: () {
                    context.push('/dashboard');
                  },
                  child: const CircularStructureWithWidgetsInside(
                    // action: () {
                    //   context.push('/dashboard');
                    // },
                    theColor: TheColors.paleYellow,
                    widget: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontFamily: 'ChamLimp',
                          color: TheColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

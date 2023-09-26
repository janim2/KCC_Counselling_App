// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:kcc/core/utils/colors.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'WELCOME !',
                      style: TextStyle(
                        fontFamily: 'LemonMilk',
                        fontSize: 28,
                        color: TheColors.black,
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.all(18),
                  height: MediaQuery.of(context).size.height - 240,
                  child: ListView(
                    children: const [
                      CircularStructureWithWidgetsInside(
                        theColor: TheColors.darkYellow,
                        widget: Padding(
                          padding: EdgeInsets.all(18),
                          child: Text(
                            'This app has been designed to help students and members of the KNUST community navigate counselling services outside a physical environment. This is by no means negating the importance of meeting with a counsellor physically if required. This is just to boost contact and communication strategies.\n\nWe hope this helps you consider counselling as an important action for a healthy lifestyle and mental preservation\n\nHappy Living!',
                            style: TextStyle(
                              fontFamily: 'ChamLimp',
                              color: TheColors.white,
                              fontSize: 23,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   margin:
                //       const EdgeInsets.only(left: 17, right: 17, bottom: 20),
                //   padding: const EdgeInsets.all(18),
                //   decoration: BoxDecoration(
                //     color: TheColors.darkYellow,
                //     borderRadius: const BorderRadius.all(
                //       Radius.circular(40),
                //     ),
                //     border: Border.all(color: TheColors.goldenYellow),
                //   ),
                //   child: const Text(
                //     'This app has been designed to help students and members of the KNUST community navigate counselling services outside a physical environment. This is by no means negating the importance of meeting with a counsellor physically if required. This is just to boost contact and communication strategies.\n\nWe hope this helps you consider counselling as an important action for a healthy lifestyle and mental preservation\n\nHappy Living!',
                //     style: TextStyle(
                //       fontFamily: 'ChamLimp',
                //       color: TheColors.white,
                //       fontSize: 25,
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcc/core/utils/colors.dart';
import 'package:kcc/src/features/dashboard/presentation/widgets/faq_card.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
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
                      'FREQUENTLY ASKED QUESTIONS',
                      style: TextStyle(
                        fontFamily: 'LemonMilk',
                        fontSize: 28,
                        color: TheColors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height - 250,
                  child: ListView(
                    children: [
                      FAQCard(
                        image: 'assets/images/study_tips.png',
                        name: 'STUDY TIPS',
                        address: '5 MINS READ',
                        action: () {
                          context.push("/faq_details/${"STUDY"}");
                        },
                      ),
                      FAQCard(
                        image: 'assets/images/anxiety.png',
                        name: 'ANXIETY',
                        address: '15 MINS READ',
                        action: () {
                          context.push("/faq_details/${"ANXIETY"}");
                        },
                      ),
                      FAQCard(
                        image: 'assets/images/suicide.png',
                        name: 'SUICIDE',
                        address: '15 MINS READ',
                        action: () {
                          context.push("/faq_details/${"SUICIDE"}");
                        },
                      ),
                      FAQCard(
                        image: 'assets/images/broken_heart.png',
                        name: 'HEART BREAK',
                        address: '15 MINS READ',
                        action: () {
                          context.push("/faq_details/${"HEART BREAK"}");
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

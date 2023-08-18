// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:kcc/core/utils/colors.dart';
import 'package:kcc/src/features/dashboard/presentation/widgets/title_text_card.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
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
                      'EVENTS & ANNOUNCEMENTS',
                      style: TextStyle(
                        fontFamily: 'LemonMilk',
                        fontSize: 30,
                        color: TheColors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(18),
                  height: MediaQuery.of(context).size.height - 300,
                  child: ListView(
                    children: const [
                      TitleTextCard(
                        title: "What's Trending",
                        text:
                            'The COVID-19 pandemic accelerated the adoption of teletherapy and online counseling services. Many therapists and clients transitioned to virtual sessions, leading to increased accessibility and convenience for individuals seeking counseling.',
                      ),
                      TitleTextCard(
                        title: 'Today on',
                        text:
                            'The use of mental health apps, online self-help platforms, and digital tools for monitoring and managing mental well-being became more prevalent. These tools often provided resources for self-care, relaxation, stress reduction, and mood tracking.',
                      )
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

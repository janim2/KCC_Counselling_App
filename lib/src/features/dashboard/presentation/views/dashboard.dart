// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcc/core/utils/colors.dart';
import 'package:kcc/src/features/dashboard/presentation/views/counsellors.dart';
import 'package:kcc/src/features/dashboard/presentation/views/events.dart';
import 'package:kcc/src/features/dashboard/presentation/views/faq.dart';
import 'package:kcc/src/features/dashboard/presentation/views/home.dart';
import 'package:unicons/unicons.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const CounsellorsScreen(),
    const FAQScreen(),
    const EventScreen()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TheColors.paleYellow,
      body: Center(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 17, right: 17, bottom: 20),
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
          color: TheColors.goldenYellow,
          borderRadius: const BorderRadius.all(
            Radius.circular(40),
          ),
          border: Border.all(color: TheColors.goldenYellow),
        ),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                _onTabTapped(0);
              },
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Icon(
                  UniconsLine.home_alt,
                  size: 32,
                  color: TheColors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onTabTapped(1);
              },
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Icon(
                  Icons.people_outline,
                  size: 38,
                  color: TheColors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onTabTapped(2);
              },
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Icon(
                  UniconsLine.comment_alt_question,
                  size: 32,
                  color: TheColors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onTabTapped(3);
              },
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Icon(
                  UniconsLine.calendar_alt,
                  size: 32,
                  color: TheColors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.push('/');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: const ColoredBox(
                  color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.logout_outlined,
                      color: TheColors.white,
                      size: 32,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

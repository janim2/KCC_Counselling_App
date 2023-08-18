// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcc/core/utils/colors.dart';
import 'package:kcc/src/features/dashboard/presentation/views/home.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen()
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
                  Icons.home_filled,
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
                  Icons.person,
                  size: 32,
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
                  Icons.question_mark,
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
                  Icons.calendar_view_day,
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

// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcc/core/utils/colors.dart';
import 'package:kcc/src/features/dashboard/presentation/widgets/counsellor_info_card.dart';

class CounsellorsScreen extends StatefulWidget {
  const CounsellorsScreen({super.key});

  @override
  State<CounsellorsScreen> createState() => _CounsellorsScreenState();
}

class _CounsellorsScreenState extends State<CounsellorsScreen> {
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
                      'COUNSELLOR PROFILES',
                      style: TextStyle(
                        fontFamily: 'LemonMilk',
                        fontSize: 30,
                        color: TheColors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height - 300,
                  child: ListView(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.push(
                            "/counsellor_details/${"MRS. BERNICE S. OFOSUHENE PEASAH"}",
                          );
                        },
                        child: const CounsellorInfoCard(
                          image: 'assets/images/bernice.png',
                          position: 'SENIOR COUNSELLOR',
                          name: 'MRS. BERNICE S. OFOSUHENE PEASAH',
                          address:
                              'DEPT: KNUST COUNSELLING CENTER,\nKNUST COUNSELLING CENTER\nDEAN OF STUDENTS, J.HARPER BUILDING,\nP.M.B, UNIVERSITY POST OFFICE,\nKUMASI, GHANA, WEST AFRICA',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.push(
                            "/counsellor_details/${"DR. ELIZABETH ANOKYEWAA SARFO FORDJOUR"}",
                          );
                        },
                        child: const CounsellorInfoCard(
                          image: 'assets/images/elizabeth.jpg',
                          position: 'COUNSELLOR',
                          name: 'DR. ELIZABETH ANOKYEWAA SARFO FORDJOUR',
                          address:
                              'DEPT: KNUST COUNSELLING CENTER,\nKNUST COUNSELLING CENTER\nDEAN OF STUDENTS, J.HARPER BUILDING,\nP.M.B, UNIVERSITY POST OFFICE,\nKUMASI, GHANA, WEST AFRICA\nROOM 7A',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.push(
                            "/counsellor_details/${"MS. JOANA JOSEPHINE HACKMAN"}",
                          );
                        },
                        child: const CounsellorInfoCard(
                          image: 'assets/images/hackman.jpg',
                          position: 'COUNSELLOR',
                          name: 'MS. JOANA JOSEPHINE HACKMAN',
                          address:
                              'DEPT: KNUST COUNSELLING CENTER,\nKNUST COUNSELLING CENTER\nDEAN OF STUDENTS, J.HARPER BUILDING,\nP.M.B, UNIVERSITY POST OFFICE,\nKUMASI, GHANA, WEST AFRICA',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.push(
                            "/counsellor_details/${"MS. AKUA AFRIYIE ADDAE"}",
                          );
                        },
                        child: const CounsellorInfoCard(
                          image: 'assets/images/akua.jpg',
                          position: 'SENIOR CLINICAL PSYCHOLOGIST',
                          name: 'MS. AKUA AFRIYIE ADDAE',
                          address:
                              'DEPT: KNUST COUNSELLING CENTER,\nKNUST COUNSELLING CENTER\nDEAN OF STUDENTS, J.HARPER BUILDING,\nP.M.B, UNIVERSITY POST OFFICE,\nKUMASI, GHANA, WEST AFRICA,\nROOM 6C',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.push(
                            "/counsellor_details/${"MR. RABBI DARKO"}",
                          );
                        },
                        child: const CounsellorInfoCard(
                          image: 'assets/images/rabbi.jpg',
                          position: 'CLINICAL PSYCHOLOGIST',
                          name: 'MR. RABBI DARKO',
                          address:
                              'DEPT: KNUST COUNSELLING CENTER,\nKNUST COUNSELLING CENTER\nDEAN OF STUDENTS, J.HARPER BUILDING,\nP.M.B, UNIVERSITY POST OFFICE,\nKUMASI, GHANA, WEST AFRICA',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.push(
                            "/counsellor_details/${"MR. GILBERT KONWIE LANGU"}",
                          );
                        },
                        child: const CounsellorInfoCard(
                          image: 'assets/images/langu.jpg',
                          position: 'ASSISTANT COUNSELLOR',
                          name: 'MR. GILBERT KONWIE LANGU',
                          address:
                              'DEPT: KNUST COUNSELLING CENTER,\nKNUST COUNSELLING CENTER\nDEAN OF STUDENTS, J.HARPER BUILDING,\nP.M.B, UNIVERSITY POST OFFICE,\nKUMASI, GHANA, WEST AFRICA\nROOM 7B',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.push(
                            "/counsellor_details/${"MR. JOSEPH ASAMOAH-GYAWU"}",
                          );
                        },
                        child: const CounsellorInfoCard(
                          image: 'assets/images/joseph.jpg',
                          position: 'SENIOR ASSISTANT REGISTRAR',
                          name: 'MR. JOSEPH ASAMOAH-GYAWU',
                          address:
                              'DEPT: KNUST COUNSELLING CENTER,\nKNUST COUNSELLING CENTER\nDEAN OF STUDENTS, J.HARPER BUILDING,\nP.M.B, UNIVERSITY POST OFFICE,\nKUMASI, GHANA, WEST AFRICA\nROOM 7B',
                        ),
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

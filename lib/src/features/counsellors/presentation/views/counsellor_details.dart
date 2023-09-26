// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kcc/core/utils/colors.dart';
import 'package:kcc/src/features/counsellors/presentation/widgets/back_button.dart';
import 'package:kcc/src/features/dashboard/presentation/widgets/counsellor_info_card.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

class CounsellorDetailsScreen extends StatefulWidget {
  const CounsellorDetailsScreen({required this.name, super.key});

  final String? name;

  @override
  State<CounsellorDetailsScreen> createState() =>
      _CounsellorDetailsScreenState();
}

class _CounsellorDetailsScreenState extends State<CounsellorDetailsScreen> {
  String _counsellorDetails = '';
  String _fileName = '';
  String _counsellorName = '';

  final List<String> fileNameList = [
    'bernice',
    'elizabeth',
    'hackman',
    'akua',
    'rabbi',
    'langu',
    'joseph'
  ];

  @override
  void initState() {
    super.initState();
    _loadCounsellorDetails();
  }

  Future<void> _loadCounsellorDetails() async {
    final counsellorName = widget.name;
    if (counsellorName!.contains('BERNICE')) {
      _fileName = fileNameList[0];
      _counsellorName = 'MRS. BERNICE S. OFOSUHENE PEASAH';
    } else if (counsellorName.contains('ELIZABETH')) {
      _fileName = fileNameList[1];
      _counsellorName = 'DR. ELIZABETH ANOKYEWAA SARFO FORDJOUR';
    } else if (counsellorName.contains('HACKMAN')) {
      _fileName = fileNameList[2];
      _counsellorName = 'MS. JOANA JOSEPHINE HACKMAN';
    } else if (counsellorName.contains('AKUA')) {
      _fileName = fileNameList[3];
      _counsellorName = 'MS. AKUA AFRIYIE ADDAE';
    } else if (counsellorName.contains('RABBI')) {
      _counsellorName = 'MR. RABBI DARKO';
      _fileName = fileNameList[4];
    } else if (counsellorName.contains('LANGU')) {
      _counsellorName = 'MR. GILBERT KONWIE LANGU';

      _fileName = fileNameList[5];
    } else if (counsellorName.contains('JOSEPH')) {
      _fileName = fileNameList[6];
      _counsellorName = 'MR. JOSEPH ASAMOAH-GYAWU';
    }

    final counsellorDetailsText =
        await rootBundle.loadString('assets/files/$_fileName.txt');
    setState(() {
      _counsellorDetails = counsellorDetailsText;
    });
  }

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
                const Align(
                    alignment: Alignment.centerLeft, child: theBackButton()),
                Container(
                  height: MediaQuery.of(context).size.height - 90,
                  child: ListView(
                    children: [
                      CounsellorInfoCard(
                        theColor: Colors.transparent,
                        textColor: TheColors.black,
                        image: _fileName != 'bernice'
                            ? 'assets/images/$_fileName.jpg'
                            : 'assets/images/$_fileName.png',
                        position: 'SENIOR COUNSELLOR',
                        name: _counsellorName,
                        address:
                            'DEPT: KNUST COUNSELLING CENTER,\nKNUST COUNSELLING CENTER\nDEAN OF STUDENTS, J.HARPER BUILDING,\nP.M.B, UNIVERSITY POST OFFICE,\nKUMASI, GHANA, WEST AFRICA',
                      ),
                      CircularStructureWithWidgetsInside(
                        theColor: TheColors.darkYellow,
                        widget: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            _counsellorDetails,
                            style: const TextStyle(
                              color: TheColors.white,
                              fontSize: 20,
                              fontFamily: 'ChamLimp',
                            ),
                          ),
                        ),
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

// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kcc/core/utils/colors.dart';
import 'package:kcc/src/features/counsellors/presentation/widgets/back_button.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

class FAQDetailsScreen extends StatefulWidget {
  const FAQDetailsScreen({required this.faqName, super.key});

  final String? faqName;

  @override
  State<FAQDetailsScreen> createState() => _FAQDetailsScreenState();
}

class _FAQDetailsScreenState extends State<FAQDetailsScreen> {
  String _faqDetails = '';
  String _fileName = '';

  final List<String> fileNameList = [
    'study',
    'anxiety',
    'suicide',
    'heart_break',
  ];

  @override
  void initState() {
    super.initState();
    _loadFAQDetails();
  }

  Future<void> _loadFAQDetails() async {
    final faqName = widget.faqName;
    if (faqName == 'STUDY') {
      _fileName = fileNameList[0];
    } else if (faqName == 'ANXIETY') {
      _fileName = fileNameList[1];
    } else if (faqName == 'SUICIDE') {
      _fileName = fileNameList[2];
    } else if (faqName == 'HEART BREAK') {
      _fileName = fileNameList[3];
    }

    final faqDetailsText =
        await rootBundle.loadString('assets/files/faq/$_fileName.txt');
    setState(() {
      _faqDetails = faqDetailsText;
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: theBackButton(
                    textByButton: widget.faqName,
                  ),
                ),
                SizedBox(
                  // margin: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height - 80,
                  child: ListView(
                    children: [
                      CircularStructureWithWidgetsInside(
                        theColor: TheColors.darkYellow,
                        widget: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            _faqDetails,
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

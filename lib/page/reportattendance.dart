import 'package:ass/widget/theme.dart';
import 'package:flutter/material.dart';

class ReportPageAd extends StatelessWidget {
  const ReportPageAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pinkputih,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Report Daily',
              style: weRSPro.copyWith(
                fontSize: 25,
                color: bata,
              ),
              textAlign: TextAlign.center,
            ),
            Icon(Icons.search, size: 15, color: putih),
          ],
        ),
      ),
      backgroundColor: pinkputih,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 8, right: 20),
            child: Column(
              children: [
                Text(
                  'Report Attendance',
                  style: boldSSPro.copyWith(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:ass/module.dart/reportmod.dart';
import 'package:ass/widget/theme.dart';
import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  final Report report;

  const ReportCard(this.report, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),

          // ignore: sized_box_for_whitespace
          child: Container(
            width: 130,
            height: 110,
            child: Stack(
              children: [
                Image.asset(
                  report.imageUrl,
                  //'asset/image/test.jpg',
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(176, 168, 2, 2),
                      //ganti warna
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'asset/image/alarmyello.png',
                            width: 12,
                            height: 12,
                          ),
                          Text(
                            report.timeS,
                            style: iiSPro.copyWith(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              report.nameWorker,
              style: boldSSPro.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 8,
            ),
            Text.rich(
              TextSpan(
                text: report.dateT,
                style: iiSPro.copyWith(fontSize: 16, color: merahmuda),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              report.location,
              style: iiSPro.copyWith(fontSize: 16, color: pinktua),
            )
          ],
        ),
      ],
    );
  }
}

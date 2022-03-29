import 'package:ass/widget/theme.dart';
import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  final int id;
  final String nameWorker;
  final String imageUrl;
  final String dateT;
  final String timeS;
  final String location;

  const ReportCard({
    Key? key,
    required this.id,
    required this.nameWorker,
    required this.imageUrl,
    required this.dateT,
    required this.timeS,
    required this.location,
  }) : super(key: key);

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
                  imageUrl,
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
                            timeS,
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
              nameWorker,
              style: boldSSPro.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 8,
            ),
            Text.rich(
              TextSpan(
                text: dateT,
                style: iiSPro.copyWith(fontSize: 16, color: merahmuda),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              location,
              style: iiSPro.copyWith(fontSize: 16, color: pinktua),
            )
          ],
        ),
      ],
    );
  }
}

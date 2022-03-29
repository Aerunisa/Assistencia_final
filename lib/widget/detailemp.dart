import 'package:ass/widget/theme.dart';
import 'package:flutter/material.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        color: Color(0xFFFFEBEE),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: edge,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fitriani',
                      style: boldSSPro.copyWith(
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Ket. Jabatan',
                      style: boldSSPro.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Alamat email',
                      style: weSSPro.copyWith(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Image.asset(
                  'asset/image/paperplane.png',
                  width: 30,
                  height: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: edge,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Detail Present',
                  style: weSSPro.copyWith(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.left,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                  width: 360,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: pinktua,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 18,
                            color: hitam,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Time : \${}',
                            style: weSSPro.copyWith(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.date_range_outlined,
                            size: 18,
                            color: hitam,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Date : \${}',
                            style: weSSPro.copyWith(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.pin_drop_outlined,
                            size: 18,
                            color: hitam,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Location : \${}',
                            style: weSSPro.copyWith(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
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

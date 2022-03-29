import 'package:ass/widget/theme.dart';
import 'package:flutter/material.dart';

class URepoCard extends StatelessWidget {
  const URepoCard(
      {Key? key, required this.namaUser, required this.locationUser})
      : super(key: key);

  final String namaUser;
  final String locationUser;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start, //
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/image/PP.png'),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, ' + namaUser,
              style: boldSSPro.copyWith(fontSize: 20),
            ),
            Text(
              locationUser,
              style: weSSPro.copyWith(fontSize: 18),
            ),
            const SizedBox(width: 10),
          ],
        ),
        const SizedBox(
          width: 80,
        ),
        Container(
          height: 20,
          width: 20,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/image/close.png'),
            ),
          ),
        ),
        const SizedBox(width: 5),
        Text(
          'Test',
          style: normalSSPro.copyWith(color: memerahtua, fontSize: 15),
        )
      ],
    );
  }
}

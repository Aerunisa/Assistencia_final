//import 'package:ass/page/homeus.dart';
import 'package:ass/page/login_user.dart';
import 'package:ass/widget/theme.dart';
import 'package:flutter/material.dart';

class Splascreen extends StatelessWidget {
  const Splascreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: memerahtua,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 160,
            ),
            Text(
              'Assistencia',
              style: logo.copyWith(fontSize: 40),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'We Recap with Heart!',
              style: weSSPro.copyWith(color: putih),
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 50,
              width: 210,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginUserPage(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(memerahtua),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      'Start Recap',
                      style: boldSSPro.copyWith(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Icon(Icons.arrow_forward, size: 20, color: hitam),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

import 'package:ass/page/details.dart';
import 'package:ass/page/wfo.dart';
import 'package:ass/widget/report.dart';
import 'package:ass/widget/navbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ass/widget/theme.dart';

//import 'dart:async';
//import 'colors.dart' as color;

class HomePageUs extends StatelessWidget {
  const HomePageUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pinkputih,
      appBar: AppBar(
        title: const Text(
          'Assistencia',
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: pinkputih,
        titleTextStyle: logo.copyWith(
          fontSize: 25,
          color: bata,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 8, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // NOTE: PROFILE
                  Row(
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
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, User001',
                            style: boldSSPro.copyWith(fontSize: 20),
                          ),
                          Text(
                            'Location',
                            style: weSSPro.copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // NOTE: MENU JAM DAN HARI
                  Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 15,
                      right: 20,
                      bottom: 15,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      color: memerahtua,
                      gradient: LinearGradient(
                        colors: [
                          memerahtua.withOpacity(0.8),
                          pinktua.withOpacity(0.9),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(60),
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          DateFormat.jm().format(
                            DateTime.now(),
                          ),
                          textAlign: TextAlign.center,
                          style: boldSSPro.copyWith(fontSize: 30, color: putih),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          DateFormat('EEEE, d MMMM yyyy')
                              .format(DateTime.now()),
                          style: weRSPro.copyWith(
                            fontSize: 25,
                            color: putih,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Discipline is The Key to Success',
                    style: boldSSPro.copyWith(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // NOTE: MENU ABSENT
                  Row(
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.only(left: 20, top: 25, right: 20),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          color: bata,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 40, right: 40),
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/image/WFH.png'),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Work From Home',
                                style: boldSSPro.copyWith(
                                    fontSize: 20, color: putih),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePageUs(),
                                    ),
                                  );
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          memerahtua),
                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Be Present',
                                      style: weSSPro.copyWith(
                                          fontSize: 12, color: putih),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.arrow_forward,
                                        size: 15, color: putih),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        padding:
                            const EdgeInsets.only(left: 20, top: 25, right: 20),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          color: bata,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 40, right: 40),
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('asset/image/WFO.png'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'In The Office',
                              style: boldSSPro.copyWith(
                                  fontSize: 20, color: putih),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AbsenOffice(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        memerahtua),
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Be Present',
                                    style: weSSPro.copyWith(
                                        fontSize: 12, color: putih),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.arrow_forward,
                                      size: 15, color: putih),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // NOTE: NOTIFICATION
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Focus Notification',
                      style: weRSPro.copyWith(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        child: const ReportCard(
                          id: 1,
                          nameWorker: 'Fitriani',
                          imageUrl: 'asset/image/test.jpg',
                          timeS: '09:10',
                          dateT: 'monday, 1 jan 2022',
                          location: 'in the Office',
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PhotoDetail(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ReportCard(
                        id: 1,
                        nameWorker: 'Fitriani',
                        imageUrl: 'asset/image/test.jpg',
                        timeS: '09:10',
                        dateT: 'monday, 1 jan 2022',
                        location: 'in the Office',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ReportCard(
                        id: 1,
                        nameWorker: 'Fitriani',
                        imageUrl: 'asset/image/test.jpg',
                        timeS: '09:10',
                        dateT: 'monday, 1 jan 2022',
                        location: 'in the Office',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 75,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      //NAVBAR
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: pinktengah,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePageUs(),
                  ),
                );
              },
              child: const BottomNavbarItem(
                imageUrl: 'asset/image/home.png',
                title: 'Home',
                isActive: true,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePageUs(),
                  ),
                );
              },
              child: const BottomNavbarItem(
                imageUrl: 'asset/image/address.png',
                title: 'Report',
                isActive: false,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePageUs(),
                  ),
                );
              },
              child: const BottomNavbarItem(
                imageUrl: 'asset/image/paperplane.png',
                title: 'Message',
                isActive: false,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

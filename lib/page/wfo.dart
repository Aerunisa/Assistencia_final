import 'package:ass/page/homeus.dart';
import 'package:ass/widget/theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AbsenOffice extends StatelessWidget {
  final TextEditingController usernameCon = TextEditingController();
  final TextEditingController emailempCon = TextEditingController();
  final TextEditingController datetimeCon = TextEditingController();
  final TextEditingController locationCon = TextEditingController();

  AbsenOffice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference absensioffice = firestore.collection('absensioffice');
    return Scaffold(
      backgroundColor: pinkputih,
      appBar: AppBar(
        title: const Text(
          'Check In Office ',
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: memerahtua,
        titleTextStyle: boldSSPro.copyWith(
          fontSize: 25,
          color: putih,
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 180,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(color: putih, boxShadow: [
                BoxShadow(
                    color: memerahtua,
                    offset: const Offset(-5, 0),
                    blurRadius: 15,
                    spreadRadius: 3),
              ]),
              width: double.infinity,
              height: 280,
              child: Row(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        style: boldSSPro.copyWith(
                          fontSize: 20,
                        ),
                        controller: usernameCon,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(hintText: "Username"),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextField(
                        style: boldSSPro.copyWith(
                          fontSize: 20,
                        ),
                        controller: emailempCon,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(hintText: "Email"),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextField(
                        style: boldSSPro.copyWith(
                          fontSize: 20,
                        ),
                        controller: datetimeCon,
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(hintText: "Date"),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextField(
                        style: boldSSPro.copyWith(
                          fontSize: 20,
                        ),
                        controller: locationCon,
                        keyboardType: TextInputType.streetAddress,
                        decoration: const InputDecoration(hintText: "Address"),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                  MaterialStateProperty.all<Color>(memerahtua),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Absensi Foto',
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
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              absensioffice.add({
                                "Username": usernameCon.text,
                                "EmailEmp": emailempCon.text,
                                "DateTime": datetimeCon.text,
                                "LocationUser": locationCon.text,
                              });
                              usernameCon.text = "";
                              emailempCon.text = "";
                              datetimeCon.text = "";
                              locationCon.text = "";
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(memerahtua),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Absensi Tulis',
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
                      )
                    ],
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

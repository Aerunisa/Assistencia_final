import 'package:ass/page/data_all_ad.dart';
import 'package:ass/page/details.dart';
import 'package:ass/page/homeadmin.dart';
import 'package:ass/widget/navbar.dart';
import 'package:flutter/material.dart';
import 'package:ass/widget/theme.dart';
import 'package:intl/intl.dart';

class DataReport extends StatelessWidget {
  const DataReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pinkputih,
      appBar: AppBar(
        title: const Text(
          'Data Report ',
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: memerahtua,
        titleTextStyle: boldSSPro.copyWith(
          fontSize: 25,
          color: putih,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 8, right: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),

                searchingField,

                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateFormat('EEEE, d MMMM yyyy')
                              .format(DateTime.now()),
                          style: weRSPro.copyWith(
                            fontSize: 20,
                            color: memerahtua,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 10),
                        Row(
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
                                  'Hi, User001',
                                  style: boldSSPro.copyWith(fontSize: 20),
                                ),
                                Text(
                                  'Location',
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
                                  image: AssetImage('asset/image/check.png'),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Success',
                              style: normalSSPro.copyWith(
                                  color: greenColor, fontSize: 15),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
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
                                  'Hi, User001',
                                  style: boldSSPro.copyWith(fontSize: 20),
                                ),
                                Text(
                                  'Location',
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
                              'Lated',
                              style: normalSSPro.copyWith(
                                  color: memerahtua, fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //////////////////// End
                const SizedBox(
                  height: 80,
                )
              ],
            ),
          ),
        ),
      ),
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
                    builder: (context) => const HomeAdmin(),
                  ),
                );
              },
              child: const BottomNavbarItem(
                  imageUrl: 'asset/image/homePink.png',
                  title: 'Home',
                  isActive: false),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DataUnp(),
                  ),
                );
              },
              child: const BottomNavbarItem(
                imageUrl: 'asset/image/addressMerah.png',
                title: 'Report',
                isActive: true,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PhotoDetail(),
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

//final _formKey = GlobalKey<FormState>();
final TextEditingController searchingController = TextEditingController();

final searchingField = TextFormField(
  autofocus: false,
  controller: searchingController,
  keyboardType: TextInputType.text,
  onSaved: (value) {
    searchingController.text = value!;
  },
  textInputAction: TextInputAction.next,
  decoration: InputDecoration(
    prefixIcon: const Icon(Icons.search_sharp),
    contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
    hintText: "Searching the Value",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);

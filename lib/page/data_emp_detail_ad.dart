import 'package:ass/page/data_all_ad.dart';
import 'package:ass/page/details.dart';
import 'package:ass/page/homeadmin.dart';
import 'package:ass/widget/navbar.dart';
import 'package:flutter/material.dart';
import 'package:ass/widget/theme.dart';
import 'package:intl/intl.dart';

class DataDetail extends StatelessWidget {
  const DataDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pinkputih,
      appBar: AppBar(
        title: const Text(
          'Data Employee ',
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
                Container(),
                searchingField,
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Department __',
                  style: boldSSPro.copyWith(
                    color: memerahtua,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
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

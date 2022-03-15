import 'package:ass/page/data_emp_ad.dart';
import 'package:ass/page/data_report_ad.dart';
import 'package:ass/page/details.dart';
import 'package:ass/page/homeadmin.dart';
import 'package:ass/widget/navbar.dart';
import 'package:flutter/material.dart';
import 'package:ass/widget/theme.dart';

class DataUnp extends StatelessWidget {
  const DataUnp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tahunButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: maroonColor,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        height: 40,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PhotoDetail(),
            ),
          );
        },
        child: Text(
          'tahun',
          style: TextStyle(
              color: whiteColor, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: pinkputih,
      appBar: AppBar(
        title: const Text(
          'Data Employee ',
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
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
                ExpansionTile(
                  title: Text('Menu'),
                  leading: Icon(Icons.info),
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DataReportAdmin(),
                          ),
                        );
                      },
                      child: const ListTile(
                        title: Text('Report'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DataReportAdmin(),
                          ),
                        );
                      },
                      child: const ListTile(
                        title: Text('Data Employe'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DataReportAdmin(),
                          ),
                        );
                      },
                      child: const ListTile(
                        title: Text('Data Department'),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, right: 20),
                          width: 360,
                          height: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border(
                              top: BorderSide(width: 3.0, color: memerahtua),
                              left: BorderSide(width: 3.0, color: memerahtua),
                              right: BorderSide(width: 3.0, color: memerahtua),
                              bottom: BorderSide(width: 3.0, color: memerahtua),
                            ),
                            color: putih,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Department',
                                    style: boldSSPro.copyWith(
                                        color: memerahtua, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    width: 175,
                                  ),
                                  InkWell(
                                    child: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 30,
                                        color: memerahtua),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const DataEmp(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              tahunButton,
                              const SizedBox(
                                height: 5,
                              ),
                              tahunButton,
                              const SizedBox(
                                height: 5,
                              ),
                              tahunButton,
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, right: 20),
                          width: 360,
                          height: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border(
                              top: BorderSide(width: 3.0, color: memerahtua),
                              left: BorderSide(width: 3.0, color: memerahtua),
                              right: BorderSide(width: 3.0, color: memerahtua),
                              bottom: BorderSide(width: 3.0, color: memerahtua),
                            ),
                            color: putih,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Department',
                                    style: boldSSPro.copyWith(
                                        color: memerahtua, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    width: 175,
                                  ),
                                  InkWell(
                                    child: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 30,
                                        color: memerahtua),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const PhotoDetail(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              tahunButton,
                              const SizedBox(
                                height: 5,
                              ),
                              tahunButton,
                              const SizedBox(
                                height: 5,
                              ),
                              tahunButton,
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, right: 20),
                          width: 360,
                          height: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border(
                              top: BorderSide(width: 3.0, color: memerahtua),
                              left: BorderSide(width: 3.0, color: memerahtua),
                              right: BorderSide(width: 3.0, color: memerahtua),
                              bottom: BorderSide(width: 3.0, color: memerahtua),
                            ),
                            color: putih,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Department',
                                    style: boldSSPro.copyWith(
                                        color: memerahtua, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    width: 175,
                                  ),
                                  InkWell(
                                    child: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 30,
                                        color: memerahtua),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const PhotoDetail(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              tahunButton,
                              const SizedBox(
                                height: 5,
                              ),
                              tahunButton,
                              const SizedBox(
                                height: 5,
                              ),
                              tahunButton,
                            ],
                          ),
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
//final TextEditingController searchingController = TextEditingController();

//final searchingField = TextFormField(
//  autofocus: false,
//  controller: searchingController,
//  keyboardType: TextInputType.text,
//  onSaved: (value) {
//    searchingController.text = value!;
//  },
//  textInputAction: TextInputAction.next,
//  decoration: InputDecoration(
//    prefixIcon: const Icon(Icons.search_sharp),
//    contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
//    hintText: "Searching the Value",
//    border: OutlineInputBorder(
//      borderRadius: BorderRadius.circular(10),
//    ),
//  ),
//);

class CustomSearchDelegate extends SearchDelegate<dynamic> {
  List<String> searchTerms = [
    'department A',
    'department b',
    'department c',
    'department d',
    'department e',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var departmen in searchTerms) {
      if (departmen.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(departmen);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var departmen in searchTerms) {
      if (departmen.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(departmen);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}

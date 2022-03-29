import 'package:ass/module.dart/departmod.dart';
import 'package:ass/page/data_emp_ad.dart';
import 'package:ass/page/details.dart';
import 'package:ass/widget/theme.dart';
import 'package:flutter/material.dart';

class DepartCard extends StatelessWidget {
  const DepartCard(this.depa, {Key? key}) : super(key: key);

  final Depacard depa;

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

    return Container(
      padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
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
                depa.namadepartment,
                style: boldSSPro.copyWith(color: memerahtua, fontSize: 18),
              ),
              const SizedBox(
                width: 175,
              ),
              InkWell(
                child: Icon(Icons.arrow_forward_ios_outlined,
                    size: 30, color: memerahtua),
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
          MaterialButton(
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
              depa.tahundepartment,
              style: TextStyle(
                  color: whiteColor, fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
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
    );
  }
}

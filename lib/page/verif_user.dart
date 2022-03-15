import 'package:flutter/material.dart';
import 'package:ass/themecolor.dart';
import 'login_user.dart';

class VerificationUser extends StatefulWidget {
  const VerificationUser({Key? key}) : super(key: key);

  @override
  _VerificationUserState createState() => _VerificationUserState();
}

class _VerificationUserState extends State<VerificationUser> {
  //our form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final verificationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //kode field
    final kodeField = TextFormField(
      autofocus: false,
      controller: verificationController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        verificationController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "enter verification code",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //confirm button
    final confirmButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: maroonColor,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginUserPage()));
        },
        child: Text(
          'Confirm',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: whiteColor, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: backgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(43.0),
              child: Form(
                key: _formKey,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Insert Verification Code',
                      style: TextStyle(
                          color: maroonColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Verification code has been sent to your  email',
                      style: TextStyle(color: blackColor, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Please copy it and input below',
                      style: TextStyle(color: blackColor, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    kodeField,
                    const SizedBox(
                      height: 40,
                    ),
                    confirmButton,
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

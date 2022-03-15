import 'package:flutter/material.dart';
import 'package:ass/themecolor.dart';
import 'login_user.dart';

class NewPass extends StatefulWidget {
  const NewPass({Key? key}) : super(key: key);

  @override
  _NewPassState createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  //our form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final newPassController = TextEditingController();
  final confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //new password field
    final newPassField = TextFormField(
      autofocus: false,
      controller: newPassController,
      obscureText: true,

      // validator: (){},

      onSaved: (value) {
        newPassController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "enter your new password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //confirm password field
    final confirmPassField = TextFormField(
      autofocus: false,
      controller: confirmPassController,
      obscureText: true,

      // validator: (){},

      onSaved: (value) {
        confirmPassController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "confirm your new password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //reset button
    final resetButton = Material(
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
          'Reset',
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
                      'Reset Password',
                      style: TextStyle(
                          color: maroonColor,
                          fontSize: 36,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 43,
                    ),
                    Row(
                      children: [
                        Text(
                          'New Password',
                          style: TextStyle(color: blackColor, fontSize: 20),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    newPassField,
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'Confirm Password',
                          style: TextStyle(color: blackColor, fontSize: 20),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    confirmPassField,
                    const SizedBox(
                      height: 60,
                    ),
                    resetButton,
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

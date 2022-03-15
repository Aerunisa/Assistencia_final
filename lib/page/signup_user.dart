import 'package:flutter/material.dart';
import 'package:ass/themecolor.dart';
import 'login_user.dart';
import 'verif_user.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  _RegisterUserState createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  //our form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final newEmailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final newPassController = TextEditingController();
  final confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //new email field
    final newEmailField = TextFormField(
      autofocus: false,
      controller: newEmailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        newEmailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "enter your email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //new phone number field
    final phoneNumberField = TextFormField(
      autofocus: false,
      controller: phoneNumberController,
      keyboardType: TextInputType.phone,
      onSaved: (value) {
        phoneNumberController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.local_phone_rounded),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "enter your phone number",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

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

    //sign up button
    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: maroonColor,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const VerificationUser()));
        },
        child: Text(
          'Sign Up',
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
                      'Sign Up',
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
                          'Email',
                          style: TextStyle(color: blackColor, fontSize: 20),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    newEmailField,
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'Phone Number',
                          style: TextStyle(color: blackColor, fontSize: 20),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    phoneNumberField,
                    const SizedBox(
                      height: 15,
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
                    confirmPassField,
                    const SizedBox(
                      height: 15,
                    ),

                    const SizedBox(
                      height: 17,
                    ),
                    // loginButton,
                    const SizedBox(
                      height: 15,
                    ),
                    signupButton,
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        const Text(
                          "Already have an account?",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginUserPage()));
                            },
                            child: const Text(
                              "Log In",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff7F0000),
                              ),
                            )),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
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

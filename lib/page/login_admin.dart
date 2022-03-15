import 'package:ass/page/homeadmin.dart';
import 'package:ass/themecolor.dart';
import 'package:flutter/material.dart';

class LoginAdminPage extends StatefulWidget {
  const LoginAdminPage({Key? key}) : super(key: key);

  @override
  _LoginAdminPageState createState() => _LoginAdminPageState();
}

class _LoginAdminPageState extends State<LoginAdminPage> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController emailAdminController = TextEditingController();
  final TextEditingController passAdminController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //email field
    final emailAdminField = TextFormField(
      autofocus: false,
      controller: emailAdminController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailAdminController.text = value!;
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

    //password field
    final passAdminField = TextFormField(
      autofocus: false,
      controller: passAdminController,
      obscureText: true,

      // validator: (){},

      onSaved: (value) {
        passAdminController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "enter your password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //login button
    final loginButton = Material(
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
              builder: (context) => const HomeAdmin(),
            ),
          );
        },
        child: Text(
          'Log In',
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
                      'Log In Admin',
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
                    emailAdminField,
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'Password',
                          style: TextStyle(color: blackColor, fontSize: 20),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    passAdminField,
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff7F0000),
                            ),
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    loginButton,
                    const SizedBox(
                      height: 36,
                    ),
                    Row(
                      children: <Widget>[
                        const Text(
                          "Don't have an account yet?",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff7F0000),
                              ),
                            )),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    const SizedBox(
                      height: 97,
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

//batas



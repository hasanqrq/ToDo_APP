import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_using_hivedb/screens/Home/homepage.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen();

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    username.text = 'hasan';
    password.text = '20184190';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 100.0),
                  child: Text('THINGS',
                      style: TextStyle(fontSize: 42, color: Color(0xff172735))),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text('TOD',
                      style: TextStyle(fontSize: 78, color: Color(0xff172735))),
                  Image.asset('images/logo.png')
                ]),
                Padding(
                  padding: const EdgeInsets.only(left: 44, right: 44),
                  child: TextField(
                    controller: username,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    cursorColor: Colors.red,
                    decoration: const InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(color: Color(0xff939393)),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff808080)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 44, right: 44),
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    obscuringCharacter: "*",
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    cursorColor: Colors.red,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Color(0xff939393)),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff808080)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(44),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyHomePage(username.text)),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 44,
                      child: const Center(child: Text('Login')),
                      color: const Color(0xff6035D0),
                    ),
                  ),
                ),
                Row(children: [
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: const Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                  const Text("OR"),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: const Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                ]),
                const Padding(
                  padding: EdgeInsets.only(top: 44, bottom: 44),
                  child: Text('login using social media',
                      style: TextStyle(color: Color(0xff070707))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('images/facebook.png', scale: 2.5),
                    Image.asset('images/twitter.png', scale: 2.5),
                    Image.asset('images/google.png', scale: 2.5),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}

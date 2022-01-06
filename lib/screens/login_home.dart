// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahsoos_project/screens/login_screen.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.cyan.shade50,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Find Your Muslim Life Partner",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 55, right: 55, top: 20, bottom: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan.shade800, // background
                    onPrimary: Colors.black, // foreground
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Container(
                    height: 50,
                    child: const Center(
                      child: Text(
                        "View Single Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.cyan.shade800,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              child: Image.asset(
                "images/logo.png",
                fit: BoxFit.contain,
              ),
            ),
            Text(
              "Muslima",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25),
            )
          ],
        ),
        toolbarHeight: 180,
        elevation: 0.001,
        centerTitle: true,
        backgroundColor: Colors.cyan.shade800,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 25),
            child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 19),
                )),
          ),
        ],
      ),
      body: loginform(),
    );
  }

  Widget loginform() {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
        image: DecorationImage(
          image: AssetImage("images/splash.jpg"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'matchFilter_page.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        toolbarHeight: 60,
        elevation: 0.001,
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: settingsform(),
    );
  }

  Widget settingsform() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.mail_sharp,
              color: Colors.black,
            ),
            title: Text(
              "Email",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.lock,
              color: Colors.black,
            ),
            title: Text(
              "Settings",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.error,
              color: Colors.black,
            ),
            title: Text(
              "Settings",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Matchfilter()));

            },
            child: ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              title: Text(
                "Match Filter",
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: ListTile(
              leading: Icon(
                Icons.error,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 90, right: 90, top: 20, bottom: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade800, // background
                  onPrimary: Colors.black, // foreground
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                child: Container(
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Logout",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Switch off Profile",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "1.7.0",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

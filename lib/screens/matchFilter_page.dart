// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Matchfilter extends StatefulWidget {
  const Matchfilter({Key? key}) : super(key: key);
  @override
  _MatchfilterState createState() => _MatchfilterState();
}

class _MatchfilterState extends State<Matchfilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Match Filter",
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        toolbarHeight: 70,
        elevation: 0.01,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: settingsform(),
    );
  }

  Widget settingsform() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          SizedBox(
            height: 25,
          ),
          ListTile(
            leading: Column(
              children: [
                Text(
                  "Match Filter",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16),
                ),
                Text(
                  "Match Filter",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w100,
                      fontSize: 13),
                ),
              ],
            ),
            trailing: Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Column(
              children: [
                Text(
                  "Match Filter",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16),
                ),
                Text(
                  "Match Filter",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w100,
                      fontSize: 13),
                ),
              ],
            ),
            trailing: Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Column(
              children: [
                Text(
                  "Match Filter",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16),
                ),
                Text(
                  "Match Filter",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w100,
                      fontSize: 13),
                ),
              ],
            ),
            trailing: Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
          Container(
            // color: HexColor("5D5D5E"),
            height: 40,
            padding: EdgeInsets.only(left: 10, right: 20),
            margin: EdgeInsets.only(top: 0, bottom: 0),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.black,
              width: 0.5,
            ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "REACH US",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                Expanded(child: SizedBox()),
              ],
            ),
          ),
          ListTile(
            leading: Text(
              "Match Filter",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Text(
              "Match Filter",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Text(
              "Match Filter",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Text(
              "Match Filter",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

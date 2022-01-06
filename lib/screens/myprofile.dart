import 'package:flutter/material.dart';
import 'package:mahsoos_project/screens/photos_page.dart';
import 'package:mahsoos_project/screens/settings_page.dart';

import 'editprofile.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  _MyprofileState createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
              print("d");
            },child: const Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.cyan[800],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'mohd',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'ID:22208848',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const PhotosPage()));
                          },
                          child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                              ),
                              child: const Icon(
                                Icons.camera_alt_outlined,
                                size: 40,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Photos",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Editprofile()));
                          },
                          child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                              ),
                              child: const Icon(
                                Icons.person_add_alt,
                                size: 40,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Profile",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const  Settings()));
                          },
                          child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                              ),
                              child: const Icon(
                                Icons.settings,
                                size: 40,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Settings",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),color: Colors.teal.withOpacity(0.9)),
                margin: const EdgeInsets.only(top: 25),
                padding: const EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Your curent membership grade is ",style: TextStyle(color: Colors.white)),
                          Text("Standard", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey, width: 2)),
                      child:  Center(
                          child: Text('Upgrade Now',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color:Colors.teal.withOpacity(0.9)))),
                    ),
                  ],
                ),
              ),
              const Positioned(
                  child: Center(child: CircleAvatar(child: Icon(Icons.person_sharp),radius: 30,))),
            ],
          )
        ],
      ),
    );
  }
}

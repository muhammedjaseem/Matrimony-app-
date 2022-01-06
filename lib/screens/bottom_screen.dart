import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahsoos_project/custom/custom_text.dart';

import 'home_screen.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List indexitem=[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  int? selectedIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex =0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: indexitem[selectedIndex!],
      bottomNavigationBar: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 50,right: 50,bottom: 10,top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    selectedIndex =0;
                  });
                },
                child: selectedIndex ==0?Column(
                  children: [
                    Icon(CupertinoIcons.home,color: Colors.black,size: 30,),
                    CustomText(text: "_______")
                  ],
                ):const Icon(CupertinoIcons.home,size: 25,),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    selectedIndex =1;
                  });
                },
                child: selectedIndex ==1?Column(
                  children: [
                    const Icon(CupertinoIcons.heart,color: Colors.black,size: 30,),
                    CustomText(text: "_______")
                  ],
                ):const Icon(CupertinoIcons.heart,size: 40,),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    selectedIndex =2;
                  });
                },
                child: selectedIndex ==2?Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(CupertinoIcons.chat_bubble,color: Colors.black,size: 30,),
                    CustomText(text: "_______")
                  ],
                ):const Icon(CupertinoIcons.chat_bubble,size: 40,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

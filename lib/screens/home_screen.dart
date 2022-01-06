import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahsoos_project/custom/custom_text.dart';

import 'myprofile.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.withOpacity(0.4),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Myprofile()));
            },
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person,color: Colors.black,size: 30,),),
          ),
        ),
        centerTitle: true,
        title: CustomText(text: "Muslimah",color:Colors.teal.shade900),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.menu,color: Colors.black,),)
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context,index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Column(
                    children: [
                      Image.network("https://wallpaperaccess.com/full/1789132.jpg",height: 400,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10),
                    child: Row(
                      children: [
                        CustomText(text: "Mawadda",size: 20,),
                        const Icon(Icons.assignment_turned_in,color: Colors.green,),
                        const Icon(Icons.person_sharp,color: Colors.grey,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: " 27 - ram allah,west Bank,palastine",size: 13,),
                            SizedBox(height: 2,),
                            Row(
                              children: [
                                const Icon(Icons.circle,size: 15,color: Colors.orange,),
                                CustomText(text: " 0 min ago",size: 12,color: Colors.grey,),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.heart,size: 55,color: Colors.black,)),
                              IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.chat_bubble,size: 55,color: Colors.black,))
                            ],),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
                );
          }),
        ],
      )
    );
  }
}

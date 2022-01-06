import 'package:flutter/material.dart';
import 'package:mahsoos_project/custom/custom_text.dart';
import 'package:mahsoos_project/screens/bottom_screen.dart';
import 'package:mahsoos_project/screens/home_screen.dart';
import 'package:mahsoos_project/screens/profile_creating.dart';

import 'age_place.dart';
import 'forgot_pass_screen.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Colors.teal.withOpacity(0.9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 50),
            padding: const EdgeInsets.only(top: 5,left: 20,right: 20),
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
                Center(child: CustomText(text: "Login to Muslimah",size: 20,weight: FontWeight.w400,color: Colors.grey.shade600,)),
                Padding(
                  padding: const EdgeInsets.only(top: 40,bottom: 5),
                  child: CustomText(text: "Email"),
                ),
                 SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      hintText: 'email@example.com',
                      hintStyle:TextStyle(color: Colors.grey.shade600)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40,bottom: 5),
                  child: CustomText(text: "Password"),
                ),
                const SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ),
                ),
                 Align(
                  alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,bottom: 40),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPassScreen(),fullscreenDialog: true));
                        },
                          child: const Text("Forgot Password",style: TextStyle(decoration: TextDecoration.underline),)),
                    )),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomBar(),fullscreenDialog: true));
                  },
                  child: Container(
                    height: 40,
                    width: size.width,
                    decoration:  BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(20)),color: Colors.teal.withOpacity(0.9),),
                    child: Center(child: CustomText(text: "Login",size: 15,color: Colors.white,)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>profile_create()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text("Not a member?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),
                        Text("Join now",style: TextStyle(decoration: TextDecoration.underline,color: Colors.cyan,fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mahsoos_project/custom/custom_text.dart';
class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Colors.teal.withOpacity(0.9),
      body: SafeArea(
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
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_ios)),
              Center(child: CustomText(text: "Forgot Password",size: 20,weight: FontWeight.w400,color: Colors.grey.shade600,)),
              Padding(
                padding: const EdgeInsets.only(top: 40,bottom: 5),
                child: CustomText(text: "Email"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom:30),
                child: SizedBox(
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
              ),
              Container(
                height: 40,
                width: size.width,
                decoration:  BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(20)),color: Colors.teal.withOpacity(0.9),),
                child: Center(child: CustomText(text: "Reset Password",size: 15,color: Colors.white,)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

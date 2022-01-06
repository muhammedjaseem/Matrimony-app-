import 'package:flutter/material.dart';

import 'age_place.dart';
class profile_create extends StatefulWidget {
  const profile_create({Key? key}) : super(key: key);

  @override
  _profile_createState createState() => _profile_createState();
}

class _profile_createState extends State<profile_create> {
  double height(BuildContext context) => MediaQuery.of(context).size.height;
  double width(BuildContext context) => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade50,
      body: ListView(
        children: [
          Column(
            children: [
               Padding(
                 padding: const EdgeInsets.only(top:50),
                 child: Container(
                    width: MediaQuery.of(context).size.width,
                    height:150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            
      ), color: Colors.cyan[100],
                    ),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 10,left: 10),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Icon(Icons.arrow_back_ios),
                         Padding(
                           padding: const EdgeInsets.only(top:30,left:60),
                           child: Text("Create your free profile and \n meeting singles in minutes",
                           style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),),
                         )
                       ],
                     ),
                   )
              ),
               ),
              Container(
              
              width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top:20),
                    child: Column(
                      children: [
                        Text("I'm a",style: TextStyle(fontSize: 20),),
                      
                         Padding(
                            padding: const EdgeInsets.only(top:4,left: 50 ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 60,height: 70,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)),
                              child: Center(child:Icon(Icons.male),
                              )
                            ),
                            SizedBox(width: 10),
                             Padding(
                          padding: const EdgeInsets.only(top:4,right:50 ),
                          child: Container(
                            width: 60,height: 70,
                            decoration: BoxDecoration(border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                            child: Center(child:Icon(Icons.female),),
                          ),
                        )
                          ],
                        ),
                      ),
                        SizedBox(height: 20),
                     Column(
                      children: [
                        Text("I'm looking for",style: TextStyle(fontSize: 20),),
                      
                     
                       Padding(
                            padding: const EdgeInsets.only(top:4,left: 50 ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 60,height: 70,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)),
                              child: Center(child:Icon(Icons.male),
                              )
                            ),
                            SizedBox(width: 10),
                             Padding(
                          padding: const EdgeInsets.only(top:4,right:50 ),
                          child: Container(
                            width: 60,height: 70,
                            decoration: BoxDecoration(border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                            child: Center(child:Icon(Icons.female),),
                          ),
                        )
                          ],
                        ),
                      ),
                     
                      ],
                                      ),
                                      SizedBox(height: 20,),
               Text("What's your first name?"),
                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25,top: 10),
                  child: TextFormField(
                                   validator: (val) =>
                                    val!.isEmpty ? 'Enter Your Password' : null,
                                    cursorColor: Color.fromRGBO(135, 135, 186, 10.0),
                                    
                                   style: TextStyle(
                                        color: Color.fromRGBO(135, 135, 186, 10.0)),
                                    keyboardType: TextInputType.text,
                                    textAlign: TextAlign.start,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(15),),),
                                      
                                        
                                    ),
                                  ),
                ),
              
              
                 Padding(
                   padding: const EdgeInsets.only(top: 10,left: 30,right: 30),
                   child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: width(context) * 0.08),
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                            backgroundColor: Colors.blueGrey,
                                            padding: EdgeInsets.symmetric(
                                                vertical: height(context) * 0.03,
                                                horizontal: width(context) * 0.2),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(25)),
                                            )),
                                        onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>age_place()));
                                        },
                                    child: Center(
                                          child: Text(
                                            'Next',
                                            style: TextStyle(color: Colors.white,fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                 ),
                              
                      ],
                                      ),
               
               
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'bottom_screen.dart';


class email extends StatefulWidget {
  const email({Key? key}) : super(key: key);

  @override
  _emailState createState() => _emailState();
}

class _emailState extends State< email> {
   bool value = false;
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
               SizedBox(height: 15,),
               Text("What's your email address?"),
                 Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25,top:5),
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
                                      hintText: "email@example.com"
                                        
                                    ),
                                  ),
                ),
                 
                        SizedBox(height:50,),
                  Text("What password do you want to use?"),
                 Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25,top:5),
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
                                      hintText: "At least 8 characters"
                                        
                                    ),
                                  ),
                ),
                SizedBox(height: 15,),
               Row(
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ), //SizedBox
                         Checkbox(
                          value: this.value,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ), //Checkbox
                     
                        SizedBox(width: 10), //SizedBox
                        Text("Yes, I Agree to the Terms of the use and  \n Privacy Statement")
                        ], //<Widget>[]
                    ), //Row

                          Padding(
                   padding: const EdgeInsets.only(top: 20,left: 30,right: 30),
                   child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: width(context) * 0.10),
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
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomBar()));
                                        },
                                    child: Center(
                                          child: Text(
                                            'View Singles Now',
                                            style: TextStyle(color: Colors.white,fontSize: 12),
                                          ),
                                        ),
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

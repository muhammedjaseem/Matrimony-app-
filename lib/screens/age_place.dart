import 'package:flutter/material.dart';

import 'email.dart';


class age_place extends StatefulWidget {
  const age_place({ Key? key }) : super(key: key);

  @override
  _age_placeState createState() => _age_placeState();
}

class _age_placeState extends State<age_place> {

   double height(BuildContext context) => MediaQuery.of(context).size.height;
  double width(BuildContext context) => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
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
               Text("How old are you?",style: TextStyle(fontSize: 15,),),
               SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15)),
                height:50,width: 80,
                child: DropdownButton<String>(
  items: <String>['24', '25', '26', '27'].map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  onChanged: (_) {},
),
              ),
                Padding(
                   padding: const EdgeInsets.only(top:200,left: 30,right: 30),
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>email()));
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
        ],
      ),
    );
  }
     
}
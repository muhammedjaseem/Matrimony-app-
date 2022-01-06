import 'package:flutter/material.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({Key? key}) : super(key: key);

  @override
  _EditprofileState createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Edit Profile'),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: const Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.cyan[400],
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 20, right: 10),
            child: Text("view"),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 5),
                  child: Text(
                    "Your Basics",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                const Divider(
                  height: 5,
                  thickness: 1,
                  indent: 1,
                  endIndent: 15,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "First Name",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                      Icon(Icons.brush_rounded)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'mohd',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Lives in:",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                      Icon(Icons.brush_rounded)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'United Arab Emirites, Dubai,',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Dubai',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 5),
                  child: Text(
                    "Appearance",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                const Divider(
                  height: 5,
                  thickness: 1,
                  indent: 1,
                  endIndent: 15,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Hair color:",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                      Icon(Icons.brush_rounded)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Eye color:",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                      Icon(Icons.brush_rounded)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Lives in:",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                      Icon(Icons.brush_rounded)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Height:",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                      Icon(Icons.brush_rounded)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Weight:",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                      Icon(Icons.brush_rounded)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Body type:",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                      Icon(Icons.brush_rounded)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Your ethnicity is mostly:",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                      Icon(Icons.brush_rounded)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "I consider my appearance as:",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                      Icon(Icons.brush_rounded)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

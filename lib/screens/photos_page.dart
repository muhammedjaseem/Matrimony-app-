import 'package:flutter/material.dart';

class PhotosPage extends StatefulWidget {
  const PhotosPage({Key? key}) : super(key: key);

  @override
  _PhotosPageState createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photos"),
        centerTitle: true,
        backgroundColor: Colors.cyan[500],
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('Adding a photo is the best way to attract more'),
              const Text('attention to your profile.'),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: 300,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 200,
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: GridView.builder(
              shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.1,
                  crossAxisSpacing: 7.0,
                  childAspectRatio: 2/2,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey.shade200,
                        width: 2.0,
                      ),
                    ),
                    child: const Icon(
                      Icons.add_circle_outline_outlined,
                      size: 50,
                      color: Colors.grey,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

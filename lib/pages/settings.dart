import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pos/components/select_imge.dart';
import 'package:pos/components/shaerd_components.dart';

class SettingPage extends StatelessWidget {
  Function()? onTap;
  Uint8List? _image;
  void SelectImge() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    // setState(
    //     () {}); // https://www.youtube.com/watch?v=BjowvNSdWYE&ab_channel=TrueCoders
    _image = img;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('الاعدادات'),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Color.fromARGB(113, 10, 83, 216),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // height: double.maxFinite,
                // width: double.maxFinite,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 66,
                      backgroundImage: NetworkImage(
                          'https://cdn5.vectorstock.com/i/1000x1000/13/04/male-profile-picture-vector-2041304.jpg'),
                    ),
                    Positioned(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_a_photo),
                      ),
                      bottom: -12,
                      left: 100,
                    ),
                  ],
                ),
              )
            ],
          ),
          Divider(
            indent: 50,
            endIndent: 50,
            height: 22,
            color: Color.fromARGB(169, 83, 76, 76),
            thickness: 2,
          ),
          TextField(
            onSubmitted: (data) {},
            decoration: InputDecoration(
                label: Text('الاسم بالكامل'),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(22)),
                prefixIcon: Icon(Icons.person),
                hintText: 'الاسم الاول+اللقب'),
          ),
          Divider(
            indent: 50,
            endIndent: 50,
            height: 22,
            color: Color.fromARGB(169, 83, 76, 76),
            thickness: 2,
          ),
          TextField(
            onSubmitted: (data) {},
            decoration: InputDecoration(
                label: Text('رقم الهاتف'),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(22)),
                prefixIcon: Icon(Icons.phone),
                hintText: '+20'),
          ),
          Divider(
            indent: 50,
            endIndent: 50,
            height: 22,
            color: Color.fromARGB(169, 83, 76, 76),
            thickness: 2,
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 80),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 50, 97, 23),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Center(
                child: Text(
                  "مكانك علي الخريطة",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          )
          //////////////////////////////////////
          ///
          ///
          ///
        ],
      ),
    );
  }
}

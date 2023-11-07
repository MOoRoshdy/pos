import 'package:flutter/material.dart';
import 'package:pos/components/Types_of_services.dart';
import 'package:pos/components/corsore.dart';
import 'package:pos/pages/settings.dart';

class HomeBage extends StatelessWidget {
  HomeBage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('الصفحة الرئيسية'),
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(height: 150, width: double.infinity, child: CorSore()),
              SizedBox(
                height: 10,
              ),
              Divider(
                indent: 50,
                endIndent: 50,
                height: 22,
                color: Color.fromARGB(169, 83, 76, 76),
                thickness: 2,
              ),
              Container(
                child: Column(children: [
                  TypesOfServices(
                    imge_1: 'assets/images/category/c1.PNG',
                    imge_2: 'assets/images/category/c2.PNG',
                    imge_3: 'assets/images/category/c3.PNG',
                  ),
                  Divider(
                    indent: 150,
                    endIndent: 150,
                    height: 22,
                    color: Color.fromARGB(169, 83, 76, 76),
                    thickness: 2,
                  ),
                  TypesOfServices(
                    imge_1: 'assets/images/category/c4.PNG',
                    imge_2: 'assets/images/category/c5.PNG',
                    imge_3: 'assets/images/category/c6.PNG',
                  ),
                  Divider(
                    indent: 150,
                    endIndent: 150,
                    height: 22,
                    color: Color.fromARGB(169, 83, 76, 76),
                    thickness: 2,
                  ),
                  TypesOfServices(
                    imge_1: 'assets/images/category/c7.PNG',
                    imge_2: 'assets/images/category/c8.PNG',
                    imge_3: 'assets/images/category/c9.PNG',
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pos/components/shaerd_components.dart';

class TypesOfServices extends StatelessWidget {
  const TypesOfServices(
      {super.key,
      required this.imge_1,
      required this.imge_2,
      required this.imge_3});
  final String imge_1;
  final String imge_2;
  final String imge_3;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      color: Color.fromARGB(255, 197, 218, 243),
      child: Column(
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                child: Image.asset(
                  imge_1,
                  width: 80,
                  height: 80,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                child: Image.asset(
                  imge_2,
                  width: 80,
                  height: 80,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                child: Image.asset(
                  imge_3,
                  width: 80,
                  height: 80,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

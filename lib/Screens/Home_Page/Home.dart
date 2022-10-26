import 'package:flutter/material.dart';
import 'package:medicalapp/size_config.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5FFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Positioned(child: Container(
                height: getHeight(315),
                width: getWidth(375),
                decoration: BoxDecoration(
                  color: Color(0xFF007AFE),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(getHeight(45)),
                  ),

                ),
              )),
            ],
          ),
          SizedBox(height: getHeight(20),),

          Padding(padding: EdgeInsets.symmetric(horizontal: getWidth(16)),
          child: Text('Tus sesiones',
          style: TextStyle(
            fontSize: getHeight(20),
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          ),
          ),


          
        ],
        
      ),
    ) ;
  }
}

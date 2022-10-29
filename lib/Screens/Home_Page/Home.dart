import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    SizedBox(height: getHeight(20),),
    SingleChildScrollView(

    child: Flexible(
    child: Container(
    height: getHeight(151),
    child: ListView.separated(
    separatorBuilder: (BuildContext context, int index) {
    return SizedBox(
    width: getWidth(10),
    );
    },
    scrollDirection: Axis.horizontal,
    itemCount: 3,
    shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) =>
      // Container( //I have used container for this example. [not mandatory]
     //     color: tappedIndex == index ? Colors.blue : Colors.grey,
     //     child: ListTile(
     //         title: Center(
     //           child: Text('${index + 1}'),
     //         ),onTap:(){
     //       setState((){
     //         tappedIndex=index;
     //       });
     //     }))


      InkWell(

      child: Container(
      height: getHeight(120),
      width: getWidth(190),
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(getHeight(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),



      ),
    ),

    ),
    ),
    ),
    ),
            SizedBox(height: getHeight(30),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(16)),
              child: Text('6 de mayo de 2020',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: getHeight(20),
              ),
              ),
            ),
            SizedBox(height: getHeight(20),),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:getWidth(16)),
              child: Stack(
                children:[
                  Positioned(
                    child: Container(


                    height: getHeight(144),
                    width: getWidth(343),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.cyanAccent,
                      width: getWidth(2)
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(getHeight(25)),
                        topLeft: Radius.circular(getHeight(25)),
                        topRight: Radius.circular(getHeight(25)),
                      ),

                    ),

                ),
                  ),
                  Positioned(child: Text('Dr. Noguera',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getHeight(16),
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                  left: getWidth(55),
                    top: getHeight(19),
                  ),

                  //time
                  Positioned(child: Text('12:37',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: getHeight(14),
                  ),
                  ),
                  top: getHeight(21),
                    left: getWidth(140),
                  ),
                  Positioned(child: Text('Semana 1:',

                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getHeight(14),
                    fontWeight: FontWeight.w700,
                  ),),
                       top: getHeight(55),
                    left: getWidth(15),
                  ),
                  Positioned(child: Text('Buenos días chicos, os dejo la terapia de...',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: getHeight(13),
                  ),
                  
                  ),
                  left: getWidth(15),
                    top: getHeight(75),
                  ),
                  Positioned(child: InkWell(child: SvgPicture.asset('assets/illustrations/video call.svg')),
                  left: getWidth(15),
                    bottom: getHeight(15),
                  ),
                  Positioned(child: InkWell(
                    onTap: (){
                      print('pressed');
                    },
                    child: SvgPicture.asset('assets/illustrations/exp.svg'),
                  ),
                    top: getHeight(21),
                    right: getWidth(24),
                  ),
                  Positioned(child: Image.asset('assets/illustrations/Ellipse 26.png',
                  ),
                  left: getWidth(15),
                    height: getHeight(15),
                  )
                  
                  
                ]
              ),
            )
  ]
    )
    ,
    );
  }
}

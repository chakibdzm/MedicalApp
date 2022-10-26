import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicalapp/Screens/Home_Page/Home.dart';
import 'package:medicalapp/Screens/Onboarding/QR_code.dart';
import 'package:medicalapp/size_config.dart';
class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: PageView(
            controller: _controller,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: getHeight(136),),
                    Center(child: SvgPicture.asset('assets/illustrations/8578 1.svg'),),
                    SizedBox(height: getHeight(102),),
                    Center(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Estés donde estés',
                        style: TextStyle(
                          fontSize: getHeight(22),
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        ),
                        SizedBox(height: getHeight(10),),
                        Text('Lorem ipsum dolor sit \namet, consectetur \nadipiscing elit. Ut.',
                          style: TextStyle(
                            fontSize: getHeight(16),
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),),
                    SizedBox(height: getHeight(30),),
                    Center(
                      child: InkWell(
                        onTap: () => _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut),
                        child: Container(
                        height: getHeight(50),
                        width: getWidth(323),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getHeight(30),
                          ),
                          color: Color(0xFF007AFE),

                        ),
                        child: Center(
                          child: Text('Go Next !',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: getHeight(16),
                          ),),
                        ),
                      ),),
                    )
                    
                  ],
                ),

              ),
              Container(child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getHeight(156),),
                  Center(child: SvgPicture.asset('assets/illustrations/1514 1.svg'),),
                  SizedBox(height: getHeight(132),),
                  Center(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tu comunidad',
                        style: TextStyle(
                          fontSize: getHeight(22),
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: getHeight(10),),
                      Text('Lorem ipsum dolor sit \namet, consectetur \nadipiscing elit. Ut.',
                        style: TextStyle(
                          fontSize: getHeight(16),
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),),
                  SizedBox(height: getHeight(35),),
                  Center(
                    child: InkWell(
                      onTap: () => _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut),
                      child: Container(
                        height: getHeight(50),
                        width: getWidth(323),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getHeight(30),
                          ),
                          color: Color(0xFF007AFE),

                        ),
                        child: Center(
                          child: Text('Go Next !',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: getHeight(16),
                            ),),
                        ),
                      ),),
                  )

                ],
              ),),
              Container(child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getHeight(156),),
                  Center(child: SvgPicture.asset('assets/illustrations/18 1.svg'),),
                  SizedBox(height: getHeight(82),),
                  Center(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Escanea tu código',
                        style: TextStyle(
                          fontSize: getHeight(22),
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: getHeight(10),),
                      Text('Lorem ipsum dolor sit \namet, consectetur \nadipiscing elit. Ut.',
                        style: TextStyle(
                          fontSize: getHeight(16),
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),),
                  SizedBox(height: getHeight(35),),
                  Center(
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage())),
                      child: Container(
                        height: getHeight(50),
                        width: getWidth(323),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getHeight(30),
                          ),
                          color: Color(0xFF007AFE),

                        ),
                        child: Center(
                          child: Text('Let\' s Start',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: getHeight(16),
                            ),),
                        ),
                      ),),
                  )

                ],
              ),),
            ],
          ),
        ),
      ),
    );
  }
}

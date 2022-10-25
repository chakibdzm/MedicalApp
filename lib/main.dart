import 'package:flutter/material.dart';
import 'package:medicalapp/Screens/Onboarding/Onboarding.dart';

void main(){
     runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical app',
      theme: ThemeData(
        fontFamily: 'GTWalsheimPro',
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
        primarySwatch: Colors.blue,
      ),
      home:Onboarding(),
    );
  }
}


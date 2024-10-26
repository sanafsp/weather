import 'package:flutter/material.dart';
import 'package:weater/view/homePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gotoHome();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    );
  }
  Future<void>gotoHome()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=> HomePage()));
  }
}
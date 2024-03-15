import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'HomeScreen.dart';
import 'Provider/Provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value){
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (ctx) => HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<MyProvider>(context,listen: false);
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(
          child: SpinKitWaveSpinner(
          color: controller.darkLight? Colors.white : Colors.black,
          size: 90.0,
          ),
        ),
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

import 'login/login_screen.dart';


class MainSplash_Screen extends StatefulWidget {
  @override
  _MainSplash_ScreenState createState() => _MainSplash_ScreenState();
}

class _MainSplash_ScreenState extends State<MainSplash_Screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;


    return Scaffold(
        body: Stack(

      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Image1.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.9),
            ),
          ),
        ),
        const Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding:
                EdgeInsets.only(right: 0, bottom: 60.0, left: 10, top: 0.5),
            child: Image(
              image: AssetImage('assets/images/dms-graphics-logo.png'),
              width: 180.45,
              height: 300.5,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.centerRight,
          child: Expanded(child: Padding(
            padding:
            EdgeInsets.only(right: 80, bottom: 60.0, left: 50, top: 700),
            child: Text("Powered by Janovis Infotech",style: TextStyle(fontSize: 20,color: Colors.white38),),
          ),),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: Container(
            color: Colors.transparent,
          ),
        ),

      ],
    ),
    );
  }
}

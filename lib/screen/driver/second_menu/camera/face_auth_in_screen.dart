import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../dashboard_screen.dart';
import 'face_camera.dart';

class Face_In_Screen extends StatefulWidget {
  const Face_In_Screen({Key? key}) : super(key: key);
  @override
  _Face_In_ScreenState createState() => _Face_In_ScreenState();
}

class _Face_In_ScreenState extends State<Face_In_Screen> {
  late final  height;
  double screenHeight = 0;
  double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    border: Border.all(
                        color: Color(0xFF707070),
                        width: 1.0
                    ),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(100)
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardScreen()));
                    }, // Image tapped
                    child: Image.asset('assets/images/arrow.png', height: 20,),
                  )
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/browsing.png',
                        width: 200,
                        height: 131,
                      ),
                      Positioned(child: SvgPicture.asset(
                        'assets/svg/face.svg',
                        width: 40,
                        height: 40,
                      )),

                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Face recognition",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF693999),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Scan your face to verify your identity",
                    style:
                        TextStyle(fontSize: 12, color: Color(0xFF000000)),
                  ),


                ],
              ),
            ),
          ),
          const SizedBox(height: 15),

        ],
      ),
      floatingActionButton:  GestureDetector(
        onTap: () async {
           Navigator.push(context,
               MaterialPageRoute(builder: (context) => FaceCameraView()));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 60,right: 30,bottom: 20),
          child: Container(
            height: 55,
          //  width: 309,

            decoration: const BoxDecoration(
              color: Color(0xFF693999),
              borderRadius:
              BorderRadius.all(Radius.circular(15)),
            ),
            child: const Center(
              child: Text(
                "GET STARTED",
                style: TextStyle(
                  fontFamily: "NexaBold",
                  fontSize: 14,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../constants/constants.dart';
import '../../../dashboard_screen.dart';

class FaceCameraView extends StatefulWidget {
  const FaceCameraView({Key? key}) : super(key: key);
  @override
  _FaceCameraViewState createState() => _FaceCameraViewState();
}

class _FaceCameraViewState extends State<FaceCameraView> {
  late final  height;
  double screenHeight = 0;
  double screenWidth = 0;

  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(availableMyCamera[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
          // Handle access errors here.
            break;
          default:
          // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final deviceRatio = size.width / size.height*5;
    return Scaffold(
      body: Stack(children: [
        LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: CameraPreview(controller),
            );
          },
        ),
        Positioned(
          top: 60,
          child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(

                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    border: Border.all(
                        color: Color(0xFF707070),
                        width: 1.0
                    ),
                  shape: BoxShape.circle
                  //  shape: BoxShape.circle
                  ),
                  child: Image.asset('assets/images/arrow.png', height: 20,)
              ),
            ),
          ),
        ),),
        Positioned(
          top: 100,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
               "Hold still, we're procesing",style: TextStyle(color: Colors.white),
              ),
            ),
          ),),
        Positioned(
          top: 120,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Take a clear photo of your front government Id",style: TextStyle(color: Colors.black),
              ),
            ),
          ),),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/zoom.png"),
              ),
            ),
          ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(left: 100, right: 30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                percent: 0.5,
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: const Color(0xffFFFFFF),
                progressColor: const Color(0xff6D3898),
              ),
              ),
            ),
          ),

      ],),
      /*body: Column(
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
        if (!controller.value.isInitialized) ...[
       Container()
    ],
     Expanded(
       child: MaterialApp(
        home: CameraPreview(controller),
    ),
     )


        ],
      ),
      floatingActionButton:  GestureDetector(
        onTap: () async {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => DashboardScreen()));
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
      ),*/
    );
  }
}

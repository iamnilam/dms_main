import 'package:flutter/material.dart';

import '../../dashboard_screen.dart';

class Face_AuthScreen extends StatefulWidget {
  const Face_AuthScreen({Key? key}) : super(key: key);
  @override
  _Face_AuthScreenState createState() => _Face_AuthScreenState();
}

class _Face_AuthScreenState extends State<Face_AuthScreen> {
  late final double height;
  double screenHeight = 0;
  double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.blueGrey,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        child: Column(
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        border: Border.all(
                            color: const Color(0xFF707070), width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DashboardScreen()));
                        }, // Image tapped
                        child: Image.asset(
                          'assets/images/arrow.png',
                          height: 20,
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/browsing.png',
                              width: 200,
                              height: 131,
                            ),
                            Center(
                              child: Positioned(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 80, right: 30, top: 45),
                                        child: Image.asset(
                                          'assets/images/zoom.png',
                                          width: 40,
                                          height: 40,
                                        ),
                                      ),
                                      Positioned(
                                          child: Center(
                                        child: Container(
                                          margin: const EdgeInsets.all(10.0),
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            children: [
                                              Center(
                                                child: Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 70,
                                                              right: 0,
                                                              top: 30),
                                                      child: Container(
                                                        height: 10,
                                                        width: 6,
                                                        decoration: const BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.vertical(
                                                                    top: Radius
                                                                        .circular(
                                                                            10),
                                                                    bottom: Radius
                                                                        .circular(
                                                                            10)),
                                                            color: Color(
                                                                0xFFFFFFFF)),
                                                        child: const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.0),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10,
                                                              right: 15,
                                                              top: 30),
                                                      child: Container(
                                                        height: 10,
                                                        width: 6,
                                                        decoration: const BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.vertical(
                                                                    top: Radius
                                                                        .circular(
                                                                            10),
                                                                    bottom: Radius
                                                                        .circular(
                                                                            10)),
                                                            color: Color(
                                                                0xFFFFFFFF)),
                                                        child: const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 75,
                                                    right: 20,
                                                    top: 10),
                                                child: Container(
                                                  height: 5,
                                                  width: 10,
                                                  decoration: const BoxDecoration(
                                                      // borderRadius: BorderRadius.horizontal(
                                                      //   left: Radius.circular(65),
                                                      //   right: Radius.circular(60),
                                                      // ),
                                                      color: Color(0xFFFFFFFF)),
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.all(4.0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ))
                                    ],
                                  )
                                ],
                              )),
                            )
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
                        const SizedBox(
                          height: 200,
                        ),
                        GestureDetector(
                          onTap: () async {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => DashboardScreen()));
                          },
                          child: Container(
                            height: 55,
                            width: 309,
                            margin: EdgeInsets.only(top: screenHeight / 40),
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container()
          ],
        ),
      ),
    );
  }
}

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import '../../dashboard_screen.dart';


// ignore: camel_case_types
class BlackList_Screen extends StatefulWidget {
  const BlackList_Screen({Key? key}) : super(key: key);

  @ // ignore: library_private_types_in_public_api
  override
  // ignore: library_private_types_in_public_api
  _BlackList_ScreenState createState() => _BlackList_ScreenState();
}

// ignore: camel_case_types
class _BlackList_ScreenState extends State<BlackList_Screen> {
  late final double height;
  double screenHeight = 0;
  double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        height: 120,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
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
                            color: const Color(0xFF707070),
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
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Hi Welcome..",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF693999),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Choose Facility!",
                        style:
                        TextStyle(fontSize: 28, color: Color(0xFF000000)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  MyAppBar({
    required this.height,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: AppBar(
        flexibleSpace: Container(color: Color(0xFFFFFFFF)),
        leading: Container(
          // decoration: BoxDecoration(
          //   // boxShadow: [
          //   //   BoxShadow(
          //   //     color: Color(0xFF00000029),
          //   //     offset: Offset(5.0, 5.0),
          //   //     blurRadius: 10.0,
          //   //   ),
          //   // ],
          // ),
          child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
              child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF00000029), //New
                        blurRadius: 25.0,
                      )
                    ],
                  ),
                  child: Container(
                    color: Color(0xFFFFFFFF),
                    child: Image.asset(
                      'assets/images/Adani_a_logo.png',
                      height: 100,
                    ),
                  ))),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 100, top: 30),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "DMS",
                style: TextStyle(
                  // fontFamily: "NexaBold",
                    fontSize: 20,
                    color: Color(0xFF6F3697),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () async {},
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF00000029),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
                child: Image.asset(
                  'assets/images/Group16.png',
                  height: 100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

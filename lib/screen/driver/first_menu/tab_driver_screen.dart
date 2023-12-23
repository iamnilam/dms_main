import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DRIVE_TAB extends StatefulWidget {
  const DRIVE_TAB({Key? key}) : super(key: key);

  @override
  State<DRIVE_TAB> createState() => _DRIVE_TABState();
}

class _DRIVE_TABState extends State<DRIVE_TAB> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              height: 57.6,
              margin: const EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 57.6,
                    width: 57.6,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFF707070),
                    ),
                    child: SvgPicture.asset('assets/svg/arrow-white.svg'),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20, left: 28.8, bottom: 50),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/driver.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            Container(
              color: Colors.black,
              child: TabBar(
                tabs: [
                  Tab(
                    child: Container(
                      child: Text(
                        "DRIVER",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text("CLEANER"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(children: [
              Container(
                child: Center(
                  child: Text("fhfgh"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("fhfgh"),
                ),
              )
            ]))
          ],
        ),
      )),
    );
  }
}

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'driver/frth_menu/camera/face_auth_out_screen.dart';
import 'driver/second_menu/camera/face_auth_in_screen.dart';
import 'driver/first_menu/list_of_driver_screen.dart';
import 'driver/third_menu/black_list.dart';
import 'driver/third_menu/blacklist_Alert.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @ // ignore: library_private_types_in_public_api
  override
  // ignore: library_private_types_in_public_api
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late final double height;

  Card makeDashboardItem(String title, String img, int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(10),
      child: Container(
        decoration: index == 0 || index == 3 || index == 4
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFDFDFDF),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 3,
                    offset: Offset(2, 2),
                  )
                ],
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFDFDFDF),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 3,
                    offset: Offset(2, 2),
                  )
                ],
              ),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const List_Of_Driver_Screen()));
              //2.item
            }
            if (index == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Face_In_Screen()));
              // 2.item
            }
            if (index == 2) {
              MyAlertDialog(context);
            }
            if (index == 3) {

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Face_Out_Screen()));
            }
            if (index == 4) {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => DriverDetailsScreen()));
            }
            if (index == 5) {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => SignUpScreen()));
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  img,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

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
                      color: Color(0xFFFFFFFF),
                      border: Border.all(color: Color(0xFF707070), width: 1.0),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                    ),
                    child: Image.asset(
                      'assets/images/arrow.png',
                      height: 20,
                    ),
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
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                children: [
                  makeDashboardItem("", "assets/images/icon1.png", 0),
                  makeDashboardItem("", "assets/images/icon2.png", 1),
                  makeDashboardItem("", "assets/images/icon3.png", 2),
                  makeDashboardItem("", "assets/images/icon4.png", 3),
                ],
              ),
            ),
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
            padding: const EdgeInsets.only(left: 20, right: 80, top: 30),
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

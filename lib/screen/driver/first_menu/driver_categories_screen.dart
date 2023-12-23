import 'package:dms/screen/dashboard_screen.dart';
import 'package:dms/screen/driver/first_menu/list_of_driver_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../login/login_screen.dart';


class DriverCategories extends StatefulWidget {
  const DriverCategories({super.key});

  @override
  _DriverCategoriesState createState() => _DriverCategoriesState();
}

class _DriverCategoriesState extends State<DriverCategories>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  Color myColor = Color.fromRGBO(35, 33, 33, 1.0);
  TextEditingController idController = TextEditingController();
  TextEditingController passController = TextEditingController();
  double screenHeight = 0;
  double screenWidth = 0;
  Color primary = const Color(0xFFAA00FF);
  //ate SharedPreferences sharedPreferences;
  bool _isObscure2 = true;
  final _formKey = GlobalKey<FormState>();
  late String _password;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(31, 30, 30, 1.0),
            flexibleSpace: Container(),
            leading: Container(
              child: Padding(
                  padding: const EdgeInsets.only(),
                  child: Container(
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(2.0),
                      // decoration: BoxDecoration(
                      //   color: Color(0xFF707070),
                      //
                      //   border: Border.all(
                      //       color: Color(0xFF707070),
                      //       width: 1.0
                      //   ),
                      //   borderRadius: const BorderRadius.all(
                      //       Radius.circular(100)
                      //   ),
                      // ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const List_Of_Driver_Screen()));
                        }, // Image tapped
                        child: Image.asset(
                          'assets/images/arrow-left.png',
                          width: 200,
                          height: 200,
                        ),
                      )
                  )
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
            child: Column(
              children: [
                Container(
                  width: 500,
                  height: 200,
                  decoration: BoxDecoration(
                    color:  Color.fromRGBO(31, 30, 30, 1.0),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/log1.png',
                      width: 500,
                      height: 400,
                    ),
                  ),
                ),
                Container(
                  color:  Color.fromRGBO(31, 30, 30, 1.0),
                  child: TabBar(
                    controller: _tabController,
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
                          child: Text(
                            "Cleaner",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 450,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      // Tab 1 content
                      SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20, left: 20,right: 20),
                          key: _formKey,
                          child: Column(
                            children: <Widget>[

                              Container(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextField(
                                      controller: idController,
                                      style: TextStyle(color: Colors.white.withOpacity(0.9)),
                                      obscureText: true,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          prefixIcon: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, bottom: 20, right: 20, top: 15),
                                            child: Text(
                                              "Name",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ),
                                          labelText: "example@gmail.com",
                                          labelStyle: const TextStyle(color: Colors.black38),
                                          filled: true,
                                          floatingLabelBehavior: FloatingLabelBehavior.never,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(15),
                                              borderSide: const BorderSide(
                                                  width: 0, style: BorderStyle.none))),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: idController,
                                      style: TextStyle(color: Colors.white.withOpacity(0.9)),
                                      obscureText: true,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          prefixIcon: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, bottom: 20, right: 20, top: 15),
                                            child: Text(
                                              "Email",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ),
                                          labelText: "example@gmail.com",
                                          labelStyle: const TextStyle(color: Colors.black38),
                                          filled: true,
                                          floatingLabelBehavior: FloatingLabelBehavior.never,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(15),
                                              borderSide: const BorderSide(
                                                  width: 0, style: BorderStyle.none))),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: idController,
                                      style: TextStyle(color: Colors.white.withOpacity(0.9)),
                                      obscureText: true,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          prefixIcon: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, bottom: 20, right: 20, top: 15),
                                            child: Text(
                                              "License No",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ),
                                          labelText: "example@gmail.com",
                                          labelStyle: const TextStyle(color: Colors.black38),
                                          filled: true,
                                          floatingLabelBehavior: FloatingLabelBehavior.never,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(15),
                                              borderSide: const BorderSide(
                                                  width: 0, style: BorderStyle.none))),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: idController,
                                      style: TextStyle(color: Colors.white.withOpacity(0.9)),
                                      obscureText: true,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          prefixIcon: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, bottom: 20, right: 20, top: 15),
                                            child: Text(
                                              "Aadhar No",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ),
                                          labelText: "example@gmail.com",
                                          labelStyle: const TextStyle(color: Colors.black38),
                                          filled: true,
                                          floatingLabelBehavior: FloatingLabelBehavior.never,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(15),
                                              borderSide: const BorderSide(
                                                  width: 0, style: BorderStyle.none))),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: idController,
                                      style: TextStyle(color: Colors.white.withOpacity(0.9)),
                                      obscureText: true,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          prefixIcon: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, bottom: 20, right: 20, top: 15),
                                            child: Text(
                                              "Vehicle No",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ),
                                          labelText: "example@gmail.com",
                                          labelStyle: const TextStyle(color: Colors.black38),
                                          filled: true,
                                          floatingLabelBehavior: FloatingLabelBehavior.never,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(15),
                                              borderSide: const BorderSide(
                                                  width: 0, style: BorderStyle.none))),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: idController,
                                      style: TextStyle(color: Colors.white.withOpacity(0.9)),
                                      obscureText: true,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          prefixIcon: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, bottom: 20, right: 20, top: 15),
                                            child: Text(
                                              "Mobile No",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ),
                                          labelText: "example@gmail.com",
                                          labelStyle: const TextStyle(color: Colors.black38),
                                          filled: true,
                                          floatingLabelBehavior: FloatingLabelBehavior.never,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(15),
                                              borderSide: const BorderSide(
                                                  width: 0, style: BorderStyle.none))),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => DashboardScreen()));
                                      },
                                      child: Container(
                                        color: Colors.black87,
                                        child: Center(
                                          child: Text(
                                            "Continue",
                                            style: TextStyle(
                                              fontFamily: "NexaBold",
                                              fontSize: 26,
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
                      ),
                      // Tab 2 content
                      Center(
                        child: Text('Tab 2 content'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

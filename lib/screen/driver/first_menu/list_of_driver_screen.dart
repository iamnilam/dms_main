import 'package:dms/screen/dashboard_screen.dart';
import 'package:dms/screen/driver/first_menu/driver_categories_screen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class List_Of_Driver_Screen extends StatefulWidget {
  const List_Of_Driver_Screen({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _List_Of_Driver_ScreenState createState() => _List_Of_Driver_ScreenState();
}

// ignore: camel_case_types
class _List_Of_Driver_ScreenState extends State<List_Of_Driver_Screen> {
  late final double height;

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
                        "List of Drivers",
                        style:
                        TextStyle(fontSize: 28, color: Color(0xFF693999)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
                child: MyExpansionTile(
                  title: 'Shivrajsinh Gohil',
                  subtitle: '12054-1232-323',

                ),)
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
        flexibleSpace: Container(color: const Color(0xFFFFFFFF)),
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
                    color: const Color(0xFFFFFFFF),
                    child: Image.asset(
                      'assets/images/Adani_a_logo.png',
                      height: 100,
                    ),
                  ))),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 85, top: 24),
            child: Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "DMS",
                style: TextStyle(
                  // fontFamily: "NexaBold",
                    fontSize: 35,
                    color: Colors.black),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () async {},
            child: Container(
              decoration: const BoxDecoration(
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

class MyExpansionTile extends StatefulWidget {
  final String title;
  final String subtitle;

  MyExpansionTile({required this.title, required this.subtitle});

  @override
  _MyExpansionTileState createState() => _MyExpansionTileState();
}

class ListContent{
  ListContent({this.isShow,this.item});
  int? item;
  bool? isShow;
}
class _MyExpansionTileState extends State<MyExpansionTile> {
  bool _isExpanded = false;

  List<int> checkIns = [0,1,0,1,0,1,0,1,0,1,0,1,0,1,0];
  List<ListContent> attendence = [ListContent(isShow: false,item: 0),ListContent(isShow: false,item: 1),ListContent(isShow: false,item: 2),ListContent(isShow: false,item: 3)];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: attendence.length,
      itemBuilder: (context, index) {
      return InkWell(
        onTap: (){
          setState(() {
            attendence[index].isShow = !attendence[index].isShow!;
          });
        },
        child: driverList(attendence[index].isShow!),);
    },);

  }
  driverList(bool isShow) {

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
    ),
        child: AnimatedContainer(

          duration: const Duration(seconds: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFFF8F9FD),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/images/log1.png'),
                        ],
                      ),

                      Column(
                        children: const [
                           Text("Shivrajsinh Gohil"),
                           Text("12054-1232-323",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF0079A8),
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.wavy,
                              decorationColor: Color(0xFF0FF0079A8),
                              decorationThickness: 0.9,
                              letterSpacing: 1,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              if( isShow==false)   const Image(
                    image: AssetImage(
                         'assets/images/Arroww.png'),
                    width: 30.0,
                    height: 30.0,
                  ),
                ],
              ),
              if( isShow==true)    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  DriverCategories()));
                        },
                        child: const Center(
                          child: Text(
                            "Driver Detail",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF0079A8),
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.wavy,
                              decorationColor: Color(0xFF0FF0079A8),
                              decorationThickness: 0.9,
                                letterSpacing: 1,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      const Text("Today",
                        style: TextStyle(fontSize: 22,color: Color(0xFF000000),fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  const Image(
                    image: AssetImage('assets/images/arrow-up.png'),
                    width: 30.0,
                    height: 30.0,
                  ),
                ],
              ),
              // if( isShow==true)   SizedBox(
              //     height: 50,
              //     child: ListView.builder(
              //
              //       shrinkWrap: true,
              //       scrollDirection: Axis.horizontal,
              //       itemCount: 4,
              //       itemBuilder: (context, index) {
              //         return Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Column(children: const [
              //             Text("Mon"),
              //             Text("1"),
              //
              //           ],),
              //         );
              //       },)),1
              if( isShow==true)  SizedBox(
                height: MediaQuery.of(context).size.width,
                child:
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: checkIns.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Column(

                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 2,
                          color: checkIns[index]==0?Colors.green:Colors.red,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                             border: Border.all( color: checkIns[index]==0?Colors.green:Colors.red,),
                              shape: BoxShape.circle),
                        ),
                        Container(
                          height: 30,
                          width: 2,
                          color:  checkIns[index]==0?Colors.green:Colors.red,
                        ),
                      ],
                    ),
                    const SizedBox(width: 5,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: checkIns[index]==0?const Color(0xFFD7E6D7):Color(0xffF8E4E1),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        height: 65,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [Text("Entry Checkin"),Text("9 AM")],),
                      ),
                    )
                  ],);
                },
              ),)
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../dashboard_screen.dart';

Future<dynamic>MyAlertDialog(BuildContext context){
  return showDialog(

      barrierDismissible: false,
      context: context,
      builder: (context){
        return Padding(padding: EdgeInsets.only(top: 0),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            contentPadding: EdgeInsets.zero,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFE34C5E),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                    ),
                  ),

                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 0, left: 20),
                        child: Text(
                          "Blocked Driver List",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold

                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 100,bottom: 30),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardScreen()));
                          }, // Image tapped
                          child: Image.asset('assets/images/close.png', height: 20,),
                        ),

                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(8.0),
                  child:  Container(
                    height: 400.0, // Change as per your requirement
                    width: 300.0, // Change as per your requirement
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text('Gujarat, India'),
                        );
                      },
                    ),
                  ),

                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     TextButton(
                //       onPressed: (){},
                //       child: Text("No"),
                //     ),
                //     TextButton(onPressed: (){}, child: Text("NO"))
                //   ],
                // )
              ],
            ),
          ),
        );
      }
  );
}
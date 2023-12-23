
import 'package:camera/camera.dart';
import 'package:dms/screen/main_splash_screen.dart';
import 'package:flutter/material.dart';

import 'constants/constants.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  availableMyCamera = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainSplash_Screen(),
    );
  }
}

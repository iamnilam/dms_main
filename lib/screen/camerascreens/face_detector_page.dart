// import 'package:dms/screen/camerascreens/camera_view.dart';
// import 'package:flutter/material.dart';
// import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
//
// class FaceDetector extends StatefulWidget {
//   const FaceDetector({Key? key, required FaceDetectorOptions options}) : super(key: key);
//   @override
//   State<FaceDetector> createState() => _FaceDetectorState();
//   void close() {}
// }
//
// class _FaceDetectorState extends State<FaceDetector> {
//
//
//   final FaceDetector _faceDetector = FaceDetector(
//       options: FaceDetectorOptions(
//         enableContours: true,
//         enableClassification: true,
//   )
//   );
//
//   bool _canProcess=true;
//   bool _isBusy=false;
//   CustomPaint? _customPaint;
//   String? _text;
//
//
//   @override
//   void dispose(){
//     _canProcess=false;
//     _faceDetector.close();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return CameraView(onImage: (InputImage inputImage) {  }, initialDirection: , title: '',);
//   }
// }
//

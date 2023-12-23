// import 'package:dms/screen/camerascreens/face_detector_page.dart';
// import 'package:flutter/material.dart';
//
// class CameraScreen extends StatefulWidget {
//   const CameraScreen({Key? key}) : super(key: key);
//
//   @override
//   State<CameraScreen> createState() => _CameraScreenState();
// }
//
// class _CameraScreenState extends State<CameraScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Face Detected"),),
//       body: _body(),
//     );
//   }
//
// Widget _body()=> Center(
//   child: SizedBox(
//     width: 350,
//     height: 80,
//     child: OutlinedButton(
//       style: ButtonStyle(
//         side: MaterialStateProperty.all(
//           const BorderSide(
//             color: Colors.blue, width: 1.0, style: BorderStyle.solid,
//           )
//         )
//       ),
//       onPressed: (){
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) =>FaceDetector()));
//       },
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           _buildIconWidget(Icons.arrow_forward_ios),
//           const Text("Go To Face Detector", style: TextStyle(fontSize: 20),),
//           _buildIconWidget(Icons.arrow_back_ios)
//         ],
//       ),
//     ),
//   ),
// );
//  Widget _buildIconWidget(final IconData icon)=>Padding(
//       padding: EdgeInsets.symmetric(
//           horizontal: 12.0),
//       child: Icon(
//         Icons.arrow_forward_ios,
//         size: 24,),
//     );
//
//
// }
//
//

import 'package:dms/screen/login/login_screen.dart';
import 'package:flutter/material.dart';


class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
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
  Widget build(BuildContext context) {
    // final bool isKeyboardVisible = KeyboardVisibilityProvider.isKeyboardVisible(context);
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.3, 20, 0),
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 40, bottom: 0, left: 0, top: 0.5),
                      child: const Text(
                        'Welcome back!',
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.deepPurple,
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    horizontal: screenWidth / 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: 30, bottom: 0, left: 0, top: 0.5),
                            child: Text(
                              'Sign in to your account',
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black38,
                              ),
                            ),
                          )),
                      const SizedBox(
                        height: 20,
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
                        height: 20,
                      ),
                      TextField(
                        obscureText: _isObscure2,
                        controller: passController,
                        style: TextStyle(color: Colors.black.withOpacity(0.9)),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(
                                left: 15, bottom: 20, right: 20, top: 15),
                            child: Text(
                              "Password",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          hintText: '*********',
                          labelStyle:
                          TextStyle(color: Colors.white.withOpacity(0.9)),
                          filled: true,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  width: 0, style: BorderStyle.none)),
                          suffixIcon: IconButton(
                            icon: Icon(_isObscure2
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _isObscure2 = !_isObscure2;
                              });
                            },
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Container(
                          height: 60,
                          width: screenWidth,
                          margin: EdgeInsets.only(top: screenHeight / 40),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.indigoAccent, Colors.purple],
                                begin: Alignment.bottomLeft,
                                end: Alignment.bottomRight),
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                fontFamily: "NexaBold",
                                fontSize: screenWidth / 26,
                                color: Colors.white,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget fieldTitle(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: TextStyle(
          fontSize: screenWidth / 26,
          fontFamily: "NexaBold",
        ),
      ),
    );
  }

  Widget customField(
      String hint, TextEditingController controller, bool obscure) {
    return Container(
      width: screenWidth,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 10,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: screenWidth / 6,
            child: Icon(
              Icons.person,
              color: primary,
              size: screenWidth / 15,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: screenWidth / 12),
              child: TextFormField(
                controller: controller,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: screenHeight / 35,
                  ),
                  border: InputBorder.none,
                  hintText: hint,
                ),
                maxLines: 1,
                obscureText: obscure,
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'MainScreen.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  

  Color visibilityEyeColor = Colors.blue;
  bool isObscurePassword = true;
  Icon visibilityIcon = Icon(
    Icons.visibility_off_outlined,
    color: Colors.blue,
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.white));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 160,
              ),
              Text(
                "Вход",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(height: 36),
              Container(
                height: 56,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "E-mail",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                height: 56,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                          onTap: () {
                            if (isObscurePassword == false) {
                              setState(() {
                                isObscurePassword = true;
                                visibilityEyeColor = Colors.blue;
                                visibilityIcon =
                                    Icon(Icons.visibility_off_outlined);
                              });
                            } else {
                              setState(() {
                                isObscurePassword = false;
                                visibilityEyeColor = Colors.grey;
                                visibilityIcon =
                                    Icon(Icons.visibility_outlined);
                              });
                            }
                          },
                          child: visibilityIcon),
                      hintText: "Пароль",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                  obscureText: isObscurePassword,
                ),
              ),
              SizedBox(
                height: 64,
              ),
              ElevatedButton(
                onPressed: () {
                  
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  
                },
                child: Text(
                  "Войти",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                            side: BorderSide(color: Color(0xFFF90640)))),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(44, 16, 44, 16)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFF90640))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

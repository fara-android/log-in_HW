import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Color(0xFF9F8A8A)));
    return Scaffold(
      backgroundColor: Color(0xFF9F8A8A),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset("assets/images/topbackground.png"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 56,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Главная",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    // padding: EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width - 32,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(27, 14, 4, 16),
                          child: Container(
                              width: 64,
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.yellow[600],
                                  borderRadius: BorderRadius.circular(64)),
                              child: Image.asset(
                                'assets/images/zigzag.png',
                                width: 27,
                                height: 32,
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Text(
                                "Начните зарабатывать!",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Приобретите тариф Behype-PRO \nи начните свою карьеру!",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 48),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    height: MediaQuery.of(context).size.height,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 28,
                          ),
                          Text(
                            "Категории",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildContainerCategory(
                                  "assets/images/container_picture1.png",
                                  "Реклама",
                                  "106 компаний"),
                              buildContainerCategory(
                                  "assets/images/container_picture2.png",
                                  "Взаимопиар",
                                  "56 заявок"),
                              buildContainerCategory(
                                  "assets/images/container_picture3.png",
                                  "Бартер",
                                  "245 заявок"),
                            ],
                          ),
                          SizedBox(height: 44),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Рекламные Компании",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Text(
                                  "Все",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 32),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 0.2,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                      gradient: LinearGradient(colors: [
                                        Color(0xffD96DFF),
                                        Color(0xff6322E0)
                                      ]),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(12),
                                          topLeft: Radius.circular(12))),
                                  child: Image.asset(
                                    'assets/images/frame.png',
                                    width: 178,
                                    height: 124,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12),
                                        bottomRight: Radius.circular(12)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 0.2,
                                        blurRadius: 7,
                                        offset: Offset(0, 1.5),
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    "В новом обновлении",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ])
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildContainerCategory(
    String imageAssetPath, String title, String subTitle) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.purple,
          Colors.pinkAccent,
        ],
      ),
      borderRadius: BorderRadius.circular(16),
    ),
    height: 144,
    child: Padding(
      padding: const EdgeInsets.all(1.5),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(20, 32, 20, 0),
                  child: Image.asset(
                    imageAssetPath,
                    width: 58,
                    height: 36,
                  )),
              SizedBox(
                height: 12,
              ),
              Text(
                title,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                subTitle,
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),
            ],
          )),
    ),
  );
}

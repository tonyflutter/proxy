import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ChartGptPage extends StatefulWidget {
  const ChartGptPage({super.key});

  @override
  State<ChartGptPage> createState() => _ChartGptPageState();
}

class _ChartGptPageState extends State<ChartGptPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            padding: EdgeInsets.fromLTRB(16, 60, 16, 0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/home_bg.png"),
                    fit: BoxFit.cover)),
            child: Container(
              width: size.width,
              child: Column(
                children: [
                  Container(
                    child: Image.asset("assets/images/chartgpt_active.png"),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("object");
                      Get.toNamed("/chat");
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      width: size.width / 1.1,
                      alignment: Alignment.centerLeft,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("可以和我聊任何事情"),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("object");
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              color: Colors.red,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "一些热门问题",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            )
                          ],
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("object");
                       Get.toNamed("/chat");
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      width: size.width / 1.1,
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(56, 58, 57, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "新冠疫情何时结束?",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("object");
                       Get.toNamed("/chat");
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      width: size.width / 1.1,
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(56, 58, 57, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "如何保护环境，应对气候变化 ?",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                       Get.toNamed("/chat");
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      width: size.width / 1.1,
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(56, 58, 57, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "中国和美国的关系如何发展 ?",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                       Get.toNamed("/chat");
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      width: size.width / 1.1,
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(56, 58, 57, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "人工智能是否会取代人类工作 ?",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                       Get.toNamed("/chat");
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      width: size.width / 1.1,
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(56, 58, 57, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "数字货币将如何改变我们的生活 ?",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

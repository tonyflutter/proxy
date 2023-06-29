import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shirne_dialog/shirne_dialog.dart';

class VipPage extends StatefulWidget {
  const VipPage({super.key});

  @override
  State<VipPage> createState() => _VipPageState();
}

class _VipPageState extends State<VipPage> {
  @override
  void _showDialog() {
    print("object");
    Get.bottomSheet(Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(27,44,64, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Wrap(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Column(
                children: [
                  Container(
                    height: 88,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(9, 25, 31, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/zfb.png",
                                  width: 52,
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text(
                                    "支付宝",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                )
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Image.asset(
                            "assets/images/zf_icon.png",
                            width: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    height: 88,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(9, 25, 31, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/wx.png",
                                  width: 52,
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text(
                                    "微信",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                )
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Image.asset(
                            "assets/images/zf_icon.png",
                            width: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "*如遇失败，请多试几次或提交反馈给我们。",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "总价¥999 已选择年度会员。",
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(9, 25, 31, 1),
                          ),
                          child: Center(
                            child: Text(
                              "确定",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ],
        )));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text("充值"),
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/home_bg.png"),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(size.width / 6, 100, 0, 0),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            height: 50,
                            child: Center(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/zctjok.png",
                                    width: 30,
                                    height: 30,
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      "全球VIP线路，可自由选择切换",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/zctjok.png",
                                    width: 30,
                                    height: 30,
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      "所有线路不限速度、不限流量",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      child: Container(
                        width: size.width / 1.1,
                        height: 82,
                        margin: EdgeInsets.fromLTRB(0, 33, 0, 0),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/moon_bg.png"),
                                fit: BoxFit.cover)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Image.asset(
                                      "assets/images/yue_logo.png",
                                      width: 56,
                                    ),
                                  ),
                                  Container(
                                    width: 200,
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "月度会员",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 2, 0, 0),
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "性价比之王，推荐！",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 18, 10, 0),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "¥999",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                    child: Text(
                                      "原价¥999",
                                      style: TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor:
                                            Color.fromARGB(255, 202, 36, 36),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        print("22");
                        _showDialog();
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: size.width / 1.1,
                        height: 82,
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/quarter_bg.png"),
                                fit: BoxFit.cover)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Image.asset(
                                      "assets/images/jidu_logo.png",
                                      width: 56,
                                    ),
                                  ),
                                  Container(
                                    width: 200,
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "季度会员",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 2, 0, 0),
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "性价比之王，推荐！",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 18, 10, 0),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "¥999",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                    child: Text(
                                      "原价¥999",
                                      style: TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor:
                                            Color.fromARGB(255, 202, 36, 36),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        print("object");
                        _showDialog();
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: size.width / 1.1,
                        height: 82,
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/year_bg.png"),
                                fit: BoxFit.cover)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Image.asset(
                                      "assets/images/niandu_logo.png",
                                      width: 56,
                                    ),
                                  ),
                                  Container(
                                    width: 200,
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "年度会员",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 2, 0, 0),
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "性价比之王，推荐！",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 18, 10, 0),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "¥999",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                    child: Text(
                                      "原价¥999",
                                      style: TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor:
                                            Color.fromARGB(255, 202, 36, 36),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        print("object11");
                        _showDialog();
                      },
                    ),
                    Container(
                      width: size.width / 1.1,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "购买前提示",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text(
                              "①、购买前请先试用免费线路，谨慎付款",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text(
                              "①、购买前请先试用免费线路，谨慎付款",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text(
                              "①、购买前请先试用免费线路，谨慎付款",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}

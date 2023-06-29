import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  var images = [
    "assets/images/banner1.png",
    "assets/images/banner2.png",
    "assets/images/banner3.png",
    "assets/images/banner4.png",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text("社区"),
          backgroundColor: Color.fromRGBO(22,51,76, 1),
        ),
        body: Stack(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: Image.asset(
                "assets/images/home_bg.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ListView(
                children: [
                  Container(
                    width: size.width,
                    height: 150,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          final image = images[index];
                          return Image.asset(
                            image,
                            fit: BoxFit.fill,
                          );
                        },
                        itemCount: images.length,
                        autoplay: true,
                        autoplayDelay: 3000
                        // pagination: SwiperPagination(),
                        // control: SwiperControl(),
                        ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    transformAlignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: Row(
                      children: [
                        Text("1.", style: TextStyle(color: Colors.white)),
                        Text("新闻sad健康拉萨到家啦上课啦大家撒了空间的",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

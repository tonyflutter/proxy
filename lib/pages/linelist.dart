import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class LineListPage extends StatefulWidget {
  const LineListPage({super.key});

  @override
  State<LineListPage> createState() => _LineListPageState();
}

class _LineListPageState extends State<LineListPage> {
  var initialIndexs = 0;

  List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  get ischeck => 1;

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    items.add((items.length + 1).toString());
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double _top = 0.0;

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text("选择线路"),
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/home_bg.png"),
                  fit: BoxFit.cover)),
          padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
          child: SmartRefresher(
              footer: CustomFooter(
                builder: (context, mode) {
                  Widget body;
                  if (mode == LoadStatus.idle) {
                    body = Text("拉起负载");
                  } else if (mode == LoadStatus.loading) {
                    body = CupertinoActivityIndicator();
                  } else if (mode == LoadStatus.failed) {
                    body = Text("加载失败！点击重试！");
                  } else if (mode == LoadStatus.canLoading) {
                    body = Text("加载更多");
                  } else {
                    body = Text("没有更多数据");
                  }
                  return Container(
                    height: 120.0,
                    child: Center(child: body),
                  );
                },
              ),
              enablePullDown: true,
              enablePullUp: true,
              header: WaterDropMaterialHeader(),
              controller: _refreshController,
              onRefresh: _onRefresh,
              onLoading: _onLoading,
              child: DefaultTabController(
                length: 2,
                initialIndex: initialIndexs,
                child: Column(
                  children: [
                    TabBar(
                      onTap: (value) {
                        print(value);
                        setState(() {
                          initialIndexs = value;
                        });
                      },
                      tabs: [
                        Tab(
                          text: "国内线路",
                        ),
                        Tab(
                          text: "海外线路",
                        ),
                      ],
                      labelColor: Color.fromRGBO(46, 178, 131, 1),
                      indicator: MaterialIndicator(
                        height: 3,
                        topLeftRadius: 8,
                        topRightRadius: 8,
                        bottomLeftRadius: 8,
                        bottomRightRadius: 8,
                        horizontalPadding: 70,
                        tabPosition: TabPosition.bottom,
                        color: Color.fromRGBO(46, 178, 131, 1),
                      ),
                    ),
                    initialIndexs == 0
                        ? Container(
                            padding: EdgeInsets.all(20),
                            child: Container(
                              child: Row(
                                children: [listitem(size.width / 1.12)],
                              ),
                            ),
                          )
                        : Container(
                            padding: EdgeInsets.all(20),
                            child: Container(
                              child: Row(
                                children: [listitem(size.width / 1.12)],
                              ),
                            ))
                  ],
                ),
              )),
        ));
  }

  listitem(double d) {
    return Container(
      width: d,
      height: 80,
      decoration: BoxDecoration(
        color: Color.fromRGBO(3, 26, 32, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/guojia.png",
                    width: 30,
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      "国家名称",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: ischeck == 1
                ? Image.asset(
                    "assets/images/radio_active.png",
                    width: 30,
                    height: 30,
                  )
                : Image.asset(
                    "assets/images/radio.png",
                    width: 30,
                    height: 30,
                  ),
          )
        ],
      ),
    );
  }
}

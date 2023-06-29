import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proxy_demo/constant/app_colors.dart';
import 'package:proxy_demo/models/app_model.dart';

class MyAppBar extends AppBar {
  MyAppBar({Key? key, required this.appTitle})
      : super(key: key);

  final String appTitle;

  @override
  MyAppBarState createState() => MyAppBarState();
}

class MyAppBarState extends State<MyAppBar> {
  late AppModel _appModel;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _appModel = Provider.of<AppModel>(context);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          widget.appTitle,
          style: TextStyle(color: _appModel.isOn ? Colors.black : Colors.white, fontWeight: FontWeight.w900),
        ),
        elevation: 0,
        backgroundColor: _appModel.isOn ? AppColors.yellowColor : AppColors.grayColor
);
  }
}

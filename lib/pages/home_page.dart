import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:proxy_demo/constant/app_colors.dart';
import 'package:proxy_demo/constant/app_dimens.dart';
import 'package:proxy_demo/models/app_model.dart';
import 'package:proxy_demo/models/server_model.dart';
import 'package:proxy_demo/pages/server_list.dart';
import 'package:proxy_demo/widgets/power_btn.dart';
import 'package:proxy_demo/widgets/my_app_bar.dart';
import 'package:proxy_demo/utils/common_util.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> with WidgetsBindingObserver {
  late AppModel _appModel;
  late ServerModel _serverModel;
  bool _initialStatus = false;
  bool _isLoadingData = false;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    createTimer();
  }

  @override
  void dispose() {
    cancelTimer();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void createTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _appModel.getStatus();
    });
  }

  void cancelTimer() {
    _timer.cancel();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('state = $state');
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    _appModel = Provider.of<AppModel>(context);
    _serverModel = Provider.of<ServerModel>(context);

    if (!_isLoadingData) {
      _isLoadingData = true;
      await _serverModel.getServerList(forceRefresh: true);
      await _serverModel.getSelectServer();
      _appModel.setConfigProxies(_serverModel);
    }

    if (!_initialStatus) {
      _initialStatus = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(AppDimens.maxWidth, AppDimens.maxHeight));

    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: _appModel.isOn
            ? SystemUiOverlayStyle.dark
            : SystemUiOverlayStyle.light,
        child: Scaffold(
          appBar: MyAppBar(
            appTitle: _appModel.appTitle,
          ),
          extendBody: true,
          backgroundColor:
              _appModel.isOn ? AppColors.yellowColor : AppColors.grayColor,
          body: SafeArea(
              bottom: false,
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _appModel.pageController,
                children: const [ServerListPage()],
              )),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: const PowerButton(),
        ));
  }
}

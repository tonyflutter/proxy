import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as services;
import 'package:proxy_demo/constant/app_strings.dart';
import 'package:provider/provider.dart';
import 'package:proxy_demo/models/app_model.dart';
import 'package:proxy_demo/models/server_model.dart';
import 'package:proxy_demo/router/application.dart';
import 'package:proxy_demo/router/routers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var appModel = AppModel();
  var serverModel = ServerModel();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<AppModel>.value(value: appModel),
    ChangeNotifierProvider<ServerModel>.value(value: serverModel),
  ], child: ProxyDemo()));
}

class ProxyDemo extends StatelessWidget {
  ProxyDemo({Key? key}) : super(key: key) {
    final router = FluroRouter();
    Routers.configureRoutes(router);
    Application.router = router;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppModel appModel = Provider.of<AppModel>(context);

    services.SystemChrome.setPreferredOrientations([
      services.DeviceOrientation.portraitUp,
      services.DeviceOrientation.portraitDown
    ]);

    return MaterialApp(
      title: AppStrings.appName,
      navigatorKey: Application.navigatorKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router?.generator,
      theme: appModel.themeData,
    );
  }
}

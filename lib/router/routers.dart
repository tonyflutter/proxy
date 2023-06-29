import 'package:fluro/fluro.dart';
import 'package:proxy_demo/router/router_handlers.dart';

class Routers {
  static String home = "/";

  static String login = "/login";
  static String plan = "/plan";
  static String serverList = '/server-list';
  static String webView = "/web-view";

  static void configureRoutes(FluroRouter router) {

    router.define(home, handler: homeHandler);

    router.define(serverList, handler: serverListHandler);

    router.define(webView, handler: webViewHandler);
  }
}

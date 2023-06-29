import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:proxy_demo/pages/home_page.dart';

import 'package:proxy_demo/pages/server_list.dart';
import 'package:proxy_demo/pages/webview_widget.dart';
import 'dart:convert';

/// 入口
Handler homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
      return const HomePage();
    });

/// 服务器节点页
Handler serverListHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
      return const ServerListPage();
    });

/// WebView页
Handler webViewHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
      var title = jsonDecode(parameters["titleName"]!.first);
      var url = jsonDecode(parameters["url"]!.first);
      return WebViewWidget(name: title, url: url);
    });

import 'package:proxy_demo/entity/server_entity.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class ServerService {
  Future<List<ServerEntity>> server() async {
    String jsonString = await rootBundle.loadString('assets/server.json');
    Map result = json.decode(jsonString);
    return serverEntityFromList(result['data']);
  }
}

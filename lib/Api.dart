import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:youtube/config.dart';


class Api {
  pesquisar(String pesquisa) async {
    http.Response response = await http.get(
      Uri.parse(
        "${URL_BASE}search?part=snippet&type=video&maxResults=20&order=date&key=$CHAVE_YOUTUBE_API&channelId=$ID_CANAL&q=$pesquisa",
      ),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      print("resultado: ${dadosJson["items"][2]["snippet"]["title"]}");
    } else {}
  }
}

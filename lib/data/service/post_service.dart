import 'dart:convert';

import 'package:counter_app/data/model/post_model.dart';
import 'package:http/http.dart' as http;

class PostService {
  Future<List<PostModel>> getPosts() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      List<dynamic> parsedListJson = jsonDecode(response.body);
      List<PostModel> itemsList = List<PostModel>.from(
          parsedListJson.map((i) => PostModel.fromJson(i)));
      return itemsList;
    } else {
      throw Exception();
    }
  }
}

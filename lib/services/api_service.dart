import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';
import '../constants/app_constants.dart';

class ApiService {
  static Future<List<Post>> getPosts() async {
    final response = await http.get(
      Uri.parse('${AppConstants.baseUrl}/api/posts'),
    );

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((post) => Post.fromJson(post)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

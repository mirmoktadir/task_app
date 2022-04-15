import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:task_app/data/model/image_model.dart';

class ImageService {
  static var client = http.Client();
  static Future<ImageModel?> imageList() async {
    var response = await client.get(
        Uri.parse('https://mocki.io/v1/02e91d9f-4d8c-4eb4-a4f9-bb4a60ffdaf9'));
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var imageList = ImageModel.fromJson(jsonResponse);

      return imageList;
    } else {
      return null;
    }
  }
}

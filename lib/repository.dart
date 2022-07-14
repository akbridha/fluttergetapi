import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:pakehttp/model.dart';

class repository {
  final _baseUrl = 'https://62be96ab0bc9b125615a7bd7.mockapi.io';

  Future getData() async {
    try {
      final respon = await http.get(Uri.parse(_baseUrl + '/imigrangelap'));

      if (respon.statusCode == 200) {
        print(respon.body);
        Iterable iter = jsonDecode(respon.body);
        List<Blog> blog = iter.map((e) => Blog.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future postData(String name, String country_of_origin) async {
    try {
      final respon = await http.post(Uri.parse(_baseUrl + '/imigrangelap'),
          body: {'name': name, 'country_of_origin': country_of_origin});

      if (respon.statusCode == 201) {
        print(respon.body);
        Iterable iter = jsonDecode(respon.body);
        List<Blog> blog = iter.map((e) => Blog.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  // Future<Album> fetchAlbum() async {
  //   final response = await http
  //       .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  //   if (response.statusCode == 200) {
  //     // If the server did return a 200 OK response,
  //     // then parse the JSON.
  //     return Album.fromJson(jsonDecode(response.body));
  //   } else {
  //     // If the server did not return a 200 OK response,
  //     // then throw an exception.
  //     throw Exception('Failed to load album');
  //   }
  // }

//   Future<http.Response> createAlbum(String title) {
//   return http.post(
//     Uri.parse('https://jsonplaceholder.typicode.com/albums'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       'title': title,
//     }),
//   );
// }
}

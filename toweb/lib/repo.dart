import 'dart:convert';

import 'package:http/http.dart' as http;

class Network {
  Future<List> fetchTodos() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/todos"),
    );
    return json.decode(response.body);
  }

  Future<String> postTodos() async {
    final posttodos = await http.post(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'title':
            'Flutter Post Request Example by allaboutflutter.com using http package',
        'body': 'Learnt a lot from allaboutflutter.com and exploring more',
        'userId': 7
      }),
    );
    return posttodos.body;
  }

  Future<List> fetchDataFromApi() async {
    final jsonData = await http.get(Uri.parse(
        "https://s3-us-west-2.amazonaws.com/appsdeveloperblog.com/tutorials/files/cats.json"));
        // print("*");
        // print(jsonData.body);
    return json.decode(jsonData.body);
  }
}

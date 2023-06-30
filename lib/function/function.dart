import 'dart:convert';
import 'package:api/Model/usermodel.dart';
import 'package:http/http.dart' as http;

//https://reqres.in/
List<UserModel> userList = [];
//single data with name
Future<Map<String, dynamic>?> getdat() async {
  Map<String, dynamic>? datamap;
  Map<String, dynamic>? userdata;
  http.Response response;
  response = await http.get(Uri.parse("https://reqres.in/api/users/2"));

  if (response.statusCode == 200) {
    datamap = jsonDecode(response.body);
    userdata = datamap!["data"];
  }

  return userdata;
}

//multiple data with name

Future getdatamulti() async {
  Map<String, dynamic>? datamap;
  List userdata = [];
  http.Response response;
  response = await http.get(Uri.parse("https://reqres.in/api/users?page=2"));

  if (response.statusCode == 200) {
    datamap = jsonDecode(response.body);
    userdata = datamap!["data"];
  }

  return userdata;
}

//data for no name means model required
Future<List<UserModel>> getuserdata() async {
  //https://jsonplaceholder.typicode.com/
  final resposne =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  if (resposne.statusCode == 200) {
    var data = jsonDecode(resposne.body);
    userList.clear();
    for (Map i in data) {
      userList.add(UserModel.fromJson(i));
    }
    return userList;
  } else {
    userList;
  }
  return userList;
}

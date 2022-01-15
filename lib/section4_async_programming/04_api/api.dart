// import 'package:http/http.dart';
// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  // await fetchAlbum();
  // final str = await fetchAlbum();
  // print(str);
  final data = await fetchAlbum();
  for (int i = 0; i < 100; i++) {
    print(data[i]['userId']);
    print(data[i]['id']);
    print(data[i]['title']);
    print('----------------');
  }
}

// we can add the return type
// we cant know the specific type of return so we add dynamic
Future<dynamic> fetchAlbum() async {
  const url = 'https://jsonplaceholder.typicode.com/albums';

  // get(url)  --> we will add casting coz the name get is used for many api
  // now we will use http.get

  // http.get(Uri.parse(url));

  //  final Future<http.Response> res = http.get(Uri.parse(url));
  //  type of http.Response   -- > Response
  final http.Response response = await http.get(Uri.parse(url));

  // search on statusCode
  // statusCode == 200 means every thing is ok
  // statusCode == 400 means there's an error
  // ....
  if (response.statusCode == 200) {
    // to get the data and convert it from String to List Map ...
    // we will use library called convert from json

    // json.decode(source) // convert from String to Object
    // json.encode(value) // convert from Object to String

    // we can add it into variable
    var obj = json.decode(response.body);

    // response.body; // add inside the json.decode
    //       List Map
    // return obj[0]['title']; // get data inside the obj from url [data base]
    return obj;
  } else {
    throw Exception('Error!!');
  }
}


/// try another url same way

import 'dart:convert';

import 'package:app2/Displayscreens/display_screen.dart';
import 'package:app2/modelscreens/model_screens.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class APIFetch extends StatefulWidget {
  const APIFetch({super.key});

  @override
  State<APIFetch> createState() => _APIFetchState();
}

class _APIFetchState extends State<APIFetch> {
  Future<Phoneshop> getrequest() async {
    var response =
        await http.get(Uri.parse("https://dummyjson.com/products/1"));
    print(response);
    print(response.statusCode);
    print(response.body);

    Phoneshop phone = Phoneshop.fromJson(jsonDecode(response.body));
    print(phone.id);
    print(phone.title);
    print(phone.images);
    return phone;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch API"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () async {
                var datas = await getrequest();
                getrequest();

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayScreen(phoneshop: datas),
                    ));
              },
              child: Text("get a request"))),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List image;

  Future fetchdata() async {
    var response =
        await http.get(Uri.parse('https://reqres.in/api/users?page=2'));

    if (response.statusCode == 200) {
      setState(() {
        image = jsonDecode(response.body)['data'];
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api 12"),
      ),
      body: ListView.builder(
          itemCount: image.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black26,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(image[index]['avatar']),
                  ),
                  Text(image[index]['email']),
                ],
              ),
            );
          }),
    );
  }
}

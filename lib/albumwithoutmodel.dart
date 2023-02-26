// // ignore_for_file: unused_import, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:flip_card/flip_card.dart';

// import 'package:http/http.dart' as http;

// class ApiWithoutModel extends StatefulWidget {
//   const ApiWithoutModel({super.key});

//   @override
//   State<ApiWithoutModel> createState() => _ApiWithoutModelState();
// }

// class _ApiWithoutModelState extends State<ApiWithoutModel> {
//   Future<Map<String, dynamic>> getjoke() async {
//     final response = await http
//         .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       return data;
//     } else {
//       throw Exception('failed to fetching the joke from api');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         // future: getjoke(),
//         builder: (context, snapshot) {
//       if (snapshot.hasData) {
//         final joke = snapshot.data;
//         // final setup = joke!['setup'];
//         // final punchlint = joke['punchline'];
//         final id = joke!["id"];
//         return Column(
//           children: [
//             Text('joke'),
//             SizedBox(
//               height: 40,
//             ),
//             Text('$joke'),
//             SizedBox(
//               height: 40,
//             ),
//             // Text('$setup'),
//             // Text('$punchlint'),
//             // Text('$id'),
//             SizedBox(
//               height: 50,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   // getjoke();
//                 });
//               },
//               child: Text("Press Here"),
//             ),
//           ],
//         );
//       } else {
//         return Center(
//           child: CircularProgressIndicator(),
//         );
//       }
//     });
//   }
// }

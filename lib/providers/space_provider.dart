import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:chozy/models/space.dart';

// class SpaceProvider extends ChangeNotifier {
//   getRecommendedSpaces() async {
//     var result =
//         await http.get('https://bwa-cozy.herokuapp.com/recommended-spaces');

//     print(result.statusCode);

//     if (result.statusCode == 200) {
//       List data = jsonDecode(result.body);
//       List<Space> spaces = data.map((item) => Space.fromJSON(item).toList());
//       return spaces;
//     } else {
//       return <Space>[];
//     }
//   }
// }

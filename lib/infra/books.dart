import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

Future<void> test() async {
  await dotenv.load(fileName: '.env');
  final String? url = dotenv.env['API_URL'];

  final Uri uri = Uri.parse("$url/books");
  final response = await http.get(uri);
  final body = response.body;

  final json = jsonDecode(body);
  
}

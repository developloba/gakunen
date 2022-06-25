import 'package:flutter/material.dart';
import 'upload.dart';
import 'dashboard.dart';
import 'analysis.dart';
import 'package:gakunen/loginscreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Tway(),
      theme: ThemeData.light(),
      title: 'Gaku',
      debugShowCheckedModeBanner: false,
    ),
  );
}

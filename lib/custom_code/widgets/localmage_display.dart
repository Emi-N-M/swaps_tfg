// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

class LocalmageDisplay extends StatefulWidget {
  const LocalmageDisplay({
    Key? key,
    this.width,
    this.height,
    required this.path,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String path;

  @override
  _LocalmageDisplayState createState() => _LocalmageDisplayState();
}

class _LocalmageDisplayState extends State<LocalmageDisplay> {
  @override
  Widget build(BuildContext context) {
    return Image.file(File(widget.path));
  }
}

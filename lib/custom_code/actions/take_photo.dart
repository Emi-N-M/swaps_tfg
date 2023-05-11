// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';

import 'dart:convert';

import 'package:image_picker/image_picker.dart';

final ImagePicker _picker = ImagePicker();

Future<dynamic> takePhoto(BuildContext context) async {
  dynamic output = {};
  try {
    final XFile? photoURL =
        await _picker.pickImage(source: ImageSource.gallery);
    if (photoURL != null) {
      output["path"] = photoURL.path;
      Future<Uint8List> fileUint8 = photoURL.readAsBytes();
      await fileUint8.then((value) => output["file"] = value);
    }
  } catch (e) {
    output["error"] = e.toString();
  }

  return output;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

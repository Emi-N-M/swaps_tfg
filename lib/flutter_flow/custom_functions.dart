import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

bool? isLikedItem(
  DocumentReference itemRef,
  List<LikedItemsRecord> likedItems,
) {
  bool isLikedItem = false;
  likedItems.forEach((item) {
    if (item.itemRef == itemRef) {
      isLikedItem = true;
    }
  });

  return isLikedItem;
}

DocumentReference? getItemsRef(String? docId) {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  // create document reference from path
  if (docId == null) {
    return null;
  }
  return firestore.collection('items').doc(docId);
}

List<int> toUTF8(String foo) {
  return utf8.encode(foo);
}

DocumentReference? getUserRef(String? docId) {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  // create document reference from path
  if (docId == null) {
    return null;
  }
  return firestore.collection('users').doc(docId);
}

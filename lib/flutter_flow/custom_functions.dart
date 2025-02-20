import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double? priceSummary(List<double>? prices) {
// summarize a list of prices from the product list
  if (prices == null || prices.isEmpty) {
    return null;
  }
  return prices.reduce((value, element) => value + element);
}

List<DocumentReference>? addToListoOfLaunchpads(
  List<DocumentReference>? mainList,
  List<DocumentReference>? tempList,
) {
  // take  a tempList of document Reference and add it to mainList
  if (mainList == null) {
    mainList = [];
  }
  if (tempList != null) {
    mainList.addAll(tempList);
  }
  return mainList;
}

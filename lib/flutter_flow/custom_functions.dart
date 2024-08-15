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
import '/auth/firebase_auth/auth_util.dart';

bool contienePalabrasProhibidas(String nombreUsuario) {
  List<String> palabrasProhibidas = ['Hitler', 'Permatrago', 'Queso'];
  for (String palabra in palabrasProhibidas) {
    if (nombreUsuario.toLowerCase().contains(palabra.toLowerCase())) {
      return true;
    }
  }
  return false;
}

double totalSub(List<double> subtotal) {
  double total = 0;
  for (double add in subtotal) {
    total += add;
  }
  return total + 10;
}

double sumarSub(
  double valorSub,
  double precio,
) {
  valorSub = valorSub + precio;
  return valorSub;
}

double restarSub(
  double valorSub,
  double precio,
) {
  if (valorSub > 0) {
    valorSub = valorSub - precio;
  }
  return valorSub;
}

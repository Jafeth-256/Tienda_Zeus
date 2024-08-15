// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<String> createUser(
  String correo,
  String pass,
  String randomDocGen,
) async {
  String mensaje = "Usuario Creado";
  DateTime created_time = DateTime.now();
  FirebaseApp app = await Firebase.initializeApp(
      name: randomDocGen, options: Firebase.app().options);

  try {
    UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
        .createUserWithEmailAndPassword(email: correo, password: pass);
    String? uid = userCredential.user?.uid;

    if (uid != null) {
      final CollectionReference<Map<String, dynamic>> user =
          FirebaseFirestore.instance.collection('users');
      user.doc(uid).set(<String, dynamic>{
        'uid': uid,
        'email': correo,
        'created_time': created_time,
      });
      return mensaje;
    } else {
      return "Error creando el usuario";
    }
  } on FirebaseAuthException catch (e) {
    return e.code;
  }
}
// Add your function code here!

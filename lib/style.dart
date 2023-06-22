import 'package:flutter/material.dart';

InputDecoration appInputStyle(label) {
  return  InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    fillColor: Colors.white54,
     filled: true,
    border: const OutlineInputBorder(),
    labelText: label,
  );
}


TextStyle headTextStyle() {
  return const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 25.0
  );
}

ButtonStyle appButtonStyle() {
  return ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(20),
    backgroundColor: Colors.blueGrey,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5))
    ),



  );
}
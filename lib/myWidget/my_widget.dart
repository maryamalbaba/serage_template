import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget myTextField(
    {
      required TextEditingController myController,
    required String HintText,
    required TextInputType keyboardtype}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      minLines: 1,
      maxLines: 5,
      controller: myController,
      keyboardType: keyboardtype,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: HintText,
      ),
    ),
  );
}

 import 'package:flutter/material.dart';

Widget Container_of_Chapter({
  required  String text,
})

{
  return InkWell(
onTap: (){},
    child: Container(
      width: 70,
      height: 80,
      decoration: BoxDecoration(color: const Color.fromARGB(255, 167, 212, 191),
      borderRadius: BorderRadius.circular(20)
      ),
      child: Center(child:Text(text)),
    )
    
    );
}
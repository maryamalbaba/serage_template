// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:passdata/homePage.dart';
import 'package:share_plus/share_plus.dart';

import 'package:passdata/choices.dart';
import 'package:passdata/myWidget/myWidget.dart';

class style_of_data extends StatefulWidget {
  style_of_data({
    Key? key,
    required this.Names,
    required this.number_of_people,
    required this.number_of_chapter_foeEach_Person,
    required this.StringChapter1_,
  }) : super(key: key);
  List<String> Names;

  String number_of_people;

  int number_of_chapter_foeEach_Person;

  List<String> StringChapter1_ =
      List.generate(30, (index) => (index + 1).toString());

List<String>StringChapter2=["1-2","3-4","5-6","7-8","9-10","11-12","13-14","15-16","17-18","19-20","21-22","23-24","25-26","27-28","29-30"];
List<String>StringChapter3=["1-2-3","4-5-6","7-8-9","10-11-12","13-14-15","16-17-18","19-20-21","22-23-24","25-26-27","28-29-30"];
  @override
  State<style_of_data> createState() => _style_of_dataState();
}

class _style_of_dataState extends State<style_of_data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
            child: GridView.builder(
                itemCount: widget.StringChapter1_.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container_of_Chapter(
                        text: widget.StringChapter1_[index].toString()),
                  );
                }),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () async {
                    final result = await Share.shareWithResult(
                        " number_of_chapter_foeEach_Person:  ${widget.number_of_chapter_foeEach_Person} \n number_of_people:${widget.number_of_people}\n  Names:\n${List.generate(widget.Names.length, (index) => "${index + 1}-${widget.Names[index]}  \n hussainmustafa.com\\${index}")} + \n hussainmustafa.com");
                  },
                  child: Text("send it")),
            ),
          )
        ],
      ),
    );
  }
}

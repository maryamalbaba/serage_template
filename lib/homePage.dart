import 'package:flutter/material.dart';
import 'package:passdata/SecondPage.dart';
import 'package:passdata/choices.dart';
import 'package:passdata/myWidget/my_widget.dart';
import 'package:passdata/style_of_data.dart';
import 'package:share_plus/share_plus.dart';

// bool isCheckedForCheckBox = false;
final List<Choice> List_of_choices = [
  Choice(isSelected: false, number_of_chapter_foeEach_Person: "1"),
  Choice(isSelected: false, number_of_chapter_foeEach_Person: "2"),
  Choice(isSelected: false, number_of_chapter_foeEach_Person: "3")
];


List<String> Names2 = [
  "mm",
  "nn",
  "bb",
  "kk",
  "mm",
  "nn",
  "bb",
  "kk",
  "mm",
  "nn",
  "bb",
  "kk",
  "mm",
  "nn",
  "bb",
  "kk",
  "mm",
  "nn",
  "bb",
  "kk",
  "mm",
  "nn",
  "bb",
  "kk",
  "mm",
  "nn",
  "bb",
  "kk",
  "mm",
  "nn",
  "bb",
  "kk",
  "mm",
  "nn",
];
TextEditingController Names_Controller = TextEditingController();
int ajza = 30;
int i = 0;
int index = 0;
String singlejump(int ajza) {
  String result = '';
  for (index = 1; index <= ajza; index++) {
    i++;
  }
  // print(result);

  return result;
}

String twoJump(int ajza) {
  String result = '';
  for (index = 1; index <= ajza; index += 2) {
    result += '$index+${index + 1}' +
        " " +
        Names_Controller.text.split('\n').elementAt(i) +
        '\n';
    i++;
  }
  print(result);
  return result.trim();
}

String threeJump(int ajza) {
  String result = '';
  for (index = 1; index <= ajza; index += 3) {
    result += '$index+${index + 1}+${index + 2}' +
        " " +
        Names_Controller.text.split('\n').elementAt(i) +
        '\n';
    i++;
  }
  print(result);
  return result.trim();
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController number_chapter_for_each_persoon_Controllre =
      TextEditingController();

  void the_value__number_of_choice(int index) {
    setState(() {
      List_of_choices.forEach((choice) {
        List_of_choices[index].isSelected = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 212, 168),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 300,
            child: ListView.builder(
                itemCount: List_of_choices.length,
                itemBuilder: (context, index) {
                  return Checkbox(
                      value: List_of_choices[index].isSelected,
                      onChanged: (value) {
                        setState(() {
                          List_of_choices[index].isSelected = value!;
                          if (value) {
                            number_chapter_for_each_persoon_Controllre.text =
                                List_of_choices[index]
                                    .number_of_chapter_foeEach_Person;
                          }
                        });
                      });
                }),
          ),
          myTextField(
              keyboardtype: TextInputType.number,
              myController: number_chapter_for_each_persoon_Controllre,
              HintText: 'كم جزء لكل شخص'),
          myTextField(
              keyboardtype: TextInputType.multiline,
              myController: Names_Controller,
              HintText: "أدخل اسماء الاشخاص"),
          ElevatedButton(
              onPressed: () async {
                for (i = 0; i < List_of_choices.length; i++) {
                  if (List_of_choices[i].isSelected) {
                    // style_of_data s = style_of_data(
                    //   number_of_people: i.toString(),
                    //   number_of_chapter_foeEach_Person: (i + 1),
                    //   Names: Names_Controller.text.split("/n"),
                    //   StringChapter1_: [],
                    // );
                    // final result = await Share.shareWithResult(
                    //     "number_of_chapter_foeEach_Person:  ${s.number_of_chapter_foeEach_Person} \n number_of_people:${s.number_of_people}\n Names : ${List.generate(s.Names.length, (index) => (index + i + 1).toString() + "\t -" + s.Names[index])}");

                    if (List_of_choices[i].number_of_chapter_foeEach_Person ==
                        "1") {
                      final result =
                          await Share.shareWithResult(singlejump(30));
                    } else if (List_of_choices[i]
                            .number_of_chapter_foeEach_Person ==
                        "2") {
                      final result = await Share.shareWithResult(twoJump(
                          Names_Controller.text.split('\n').length * 2));
                    } else {
                      final result = await Share.shareWithResult(threeJump(
                          Names_Controller.text.split('\n').length * 3));
                    }

                    //////////

                    // } else if (List_of_choices[i].isSelected) {
                    //   style_of_data s = style_of_data(
                    //     number_of_people: i.toString(),
                    //     number_of_chapter_foeEach_Person: (i + 1),
                    //     Names: Names_Controller.text.split("/n"),
                    //     StringChapter: [],
                    //   );
                    //   final result = await Share.shareWithResult(
                    //       "number_of_chapter_foeEach_Person:  ${s.number_of_chapter_foeEach_Person} \n number_of_people:${s.number_of_people}\n Names : ${List.generate(s.Names.length, (index) => (index + i + 1).toString() + "\t -" + s.Names[index])}");
                    // // } else {
                    //   style_of_data s = style_of_data(
                    //     number_of_people: i.toString(),
                    //     number_of_chapter_foeEach_Person: (i + 1),
                    //     Names: Names_Controller.text.split("/n"),
                    //     StringChapter: [],
                    //   );
                    //   final result = await Share.shareWithResult(
                    //       "number_of_chapter_foeEach_Person:  ${s.number_of_chapter_foeEach_Person} \n number_of_people:${s.number_of_people}\n Names : ${List.generate(s.Names.length, (index) => (index + i + 1).toString() + "\t -" + s.Names[index])}");
                  }
                }
                // Choice choice = Choice();
//Navigator.push(context,MaterialPageRoute(builder:  (context)=>style_of_data(number_of_people: nameController.text, number_of_chapter_foeEach_Person: emailController., Names: phoneController.text.split('\n\n'))));
// Navigator.push(context,MaterialPageRoute(builder: (context)=>style_of_data(Names: phoneController.text.split('\n\n'), number_of_people: nameController.text, number_of_chapter_foeEach_Person: , StringChapter: StringChapter)));
              },
              child: Text("Share"))
        ],
      ),
    );
  }

//    num_of__part(int x) async {
//   if (x == 1) {
//      final result = await Share.shareWithResult(
//                         " number_of_chapter_foeEach_Person:  ${s.number_of_chapter_foeEach_Person} \n number_of_people:${s.number_of_people}\n  Names:\n${List.generate({s.Names}.length, (index) => "${index+1}-${s.Names[index]}  \n hussainmustafa.com\\${index})}
//      )
// }
// }
//ما بعرف شو سبب هالايرررور
}

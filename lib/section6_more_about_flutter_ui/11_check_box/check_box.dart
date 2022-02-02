import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

class Ex_CheckBox extends StatefulWidget {
  const Ex_CheckBox({Key? key}) : super(key: key);

  @override
  State<Ex_CheckBox> createState() => _Ex_CheckBoxState();
}

class _Ex_CheckBoxState extends State<Ex_CheckBox> {
  // bool? isChecked = false;

  // bool? c = false;
  // bool? java = false;
  // bool? dart = false;
  // bool? python = false;
  // bool? js = false;

  List<Map> programmingLanguages = [
    {
      'isCheck': false,
      'title': 'C Language',
      'subTitle': 'C Language is a wonderful to be know',
    },
    {
      'isCheck': false,
      'title': 'Java',
      'subTitle': 'Java is in billions of devices',
    },
    {
      'isCheck': false,
      'title': 'Dart',
      'subTitle': 'Dart and Flutter Mobile Dev',
    },
    {
      'isCheck': false,
      'title': 'Python',
      'subTitle': 'Python is easy to learn',
    },
    {
      'isCheck': false,
      'title': 'JS',
      'subTitle': 'JS for web dev',
    },
  ];

  String get selectedLanguages {
    String txt = "You select:\n";

    // how to get the index dynamically

    programmingLanguages[0]['isCheck']
        ? txt += "\n${programmingLanguages[0]['title']}"
        : null;

    programmingLanguages[1]['isCheck']
        ? txt += "\n${programmingLanguages[1]['title']}"
        : null;

    programmingLanguages[2]['isCheck']
        ? txt += "\n${programmingLanguages[2]['title']}"
        : null;

    programmingLanguages[3]['isCheck']
        ? txt += "\n${programmingLanguages[3]['title']}"
        : null;

    programmingLanguages[4]['isCheck']
        ? txt += "\n${programmingLanguages[4]['title']}"
        : null;

    return txt;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'Checkbox'),
      body: DefaultTextStyle(
        style: TextStyle(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Checkbox(
              //   value: isChecked,
              //   onChanged: (value) {
              //     setState(() {});
              //     isChecked = value;
              //   },
              // ),
              Container(
                width: double.infinity,
                height: 400,
                child: ListView.builder(
                  itemCount: programmingLanguages.length,
                  itemBuilder: (context, index) {
                    return checkBoxList(
                      value: programmingLanguages[index]['isCheck'],
                      onChanged: (value) {
                        setState(() =>
                            programmingLanguages[index]['isCheck'] = value);
                      },
                      title: programmingLanguages[index]['title'],
                      subTitle: programmingLanguages[index]['subTitle'],
                    );
                  },
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => Dialog(
                        child: Container(
                          width: 200,
                          height: 250,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "You are knowing the following languages:\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("$selectedLanguages"),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Text("Submit!"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget checkBoxList({
    required bool? value,
    required void Function(bool?)? onChanged,
    required String title,
    required String subTitle,
  }) {
    return Column(
      children: [
        CheckboxListTile(
          value: value,
          onChanged: onChanged,
          tileColor: Colors.grey.shade200,
          title: Text(title),
          subtitle: Text(subTitle),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {Key? key, required this.result, required this.isMale, required this.age})
      : super(key: key);

  final double result;
  final bool isMale;
  final int age;

  String? get resultPhrase {
    String resultText = '';

    result >= 30
        ? resultText = 'Obese'
        : result > 25 && result < 30
            ? resultText = 'Overweight'
            : result < 25 && result > 18.5
                ? resultText = 'Normal'
                : resultText = 'Thin';

    ///
    /// just example of setting rules and errors
    /// in the analysis_options.yaml file
    ///
    // if (result >= 30)
    //   resultText = 'sss';
    // else if (result >= 25) resultText = 'sss';
    // if (result >= 25) resultText = 'sss';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: DefaultTextStyle(
            ///
            /// We can edit the textTheme: TextTheme(ex: headline3: TextStyle() )
            /// from the main file to make it general style when we call it
            /// ex: style: Theme.of(context).textTheme.headline3,

            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Gender: ${isMale ? "Male" : "Female"}",
                  // style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 16),
                Text("Result: ${result.toStringAsFixed(2)}"),
                const SizedBox(height: 16),
                Text("Healthiness: $resultPhrase"),
                const SizedBox(height: 16),
                Text("Age: $age"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

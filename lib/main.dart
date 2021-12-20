import 'package:flutter/material.dart';
import 'course_lessons.dart';
import 'section2_flutter_basics/33_passing_data_between_screens/routes/screen1.dart';
import 'section2_flutter_basics/33_passing_data_between_screens/routes/screen2.dart';
import 'section3_quiz_app/quiz_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Developer Guide',

      /// 11- EButtonsSummary Lesson
      theme: ThemeData(
        ///
        /// this works for all
        primarySwatch: Colors.teal,

        /// these themes are working with the old buttons style
        accentColor: Colors.limeAccent, //accents colors
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.black,
          textTheme: ButtonTextTheme.accent,
        ),

        ///
        /// TextButton
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            // textStyle: MaterialStateProperty.all(),
            backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            // overlayColor: MaterialStateProperty.all(),
            // shadowColor: MaterialStateProperty.all(),
            // elevation: MaterialStateProperty.all(),
            // padding: MaterialStateProperty.all(),
            // minimumSize: MaterialStateProperty.all(),
            // fixedSize: MaterialStateProperty.all(),
            // maximumSize: MaterialStateProperty.all(),
            // side: MaterialStateProperty.all(),
            // shape: MaterialStateProperty.all(),
            // mouseCursor: MaterialStateProperty.all(),
            visualDensity: VisualDensity.comfortable,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            animationDuration: const Duration(microseconds: 100),
            enableFeedback: false,
            alignment: Alignment.center,
            splashFactory: InkSplash.splashFactory,
          ),
        ),

        ///
        /// OutlinedButton
        outlinedButtonTheme: const OutlinedButtonThemeData(
          style: ButtonStyle(
            // textStyle: MaterialStateProperty.all(),
            // backgroundColor: MaterialStateProperty.all(),
            // foregroundColor: MaterialStateProperty.all(),
            // overlayColor: MaterialStateProperty.all(),
            // shadowColor: MaterialStateProperty.all(),
            // elevation: MaterialStateProperty.all(),
            // padding: MaterialStateProperty.all(),
            // minimumSize: MaterialStateProperty.all(),
            // fixedSize: MaterialStateProperty.all(),
            // maximumSize: MaterialStateProperty.all(),
            // side: MaterialStateProperty.all(),
            // shape: MaterialStateProperty.all(),
            // mouseCursor: MaterialStateProperty.all(),
            // visualDensity: MaterialStateProperty.all(),
            // tapTargetSize: MaterialStateProperty.all(),
            // animationDuration: MaterialStateProperty.all(),
            // enableFeedback: MaterialStateProperty.all(),
            // alignment: MaterialStateProperty.all(),
            // splashFactory: MaterialStateProperty.all(),
          ),
        ),

        ///
        /// ElevatedButton
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            // textStyle: MaterialStateProperty.all(),
            // backgroundColor: MaterialStateProperty.all(),
            // foregroundColor: MaterialStateProperty.all(),
            // overlayColor: MaterialStateProperty.all(),
            // shadowColor: MaterialStateProperty.all(),
            // elevation: MaterialStateProperty.all(),
            // padding: MaterialStateProperty.all(),
            // minimumSize: MaterialStateProperty.all(),
            // fixedSize: MaterialStateProperty.all(),
            // maximumSize: MaterialStateProperty.all(),
            // side: MaterialStateProperty.all(),
            // shape: MaterialStateProperty.all(),
            // mouseCursor: MaterialStateProperty.all(),
            // visualDensity: MaterialStateProperty.all(),
            // tapTargetSize: MaterialStateProperty.all(),
            // animationDuration: MaterialStateProperty.all(),
            // enableFeedback: MaterialStateProperty.all(),
            // alignment: MaterialStateProperty.all(),
            // splashFactory: MaterialStateProperty.all(),
          ),
        ),
      ),

      ///
      /// home is a defualt routes == '/' : (context) => const HomePage(),
      // home: const HomePage(),
      // returns to the routes with key '/' and it's by default too
      // and we can change it
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        // '/scr1': (context) => const Scr1(),
        // '/scr2': (context) => const Scr2(),
        Scr1.routeName: (context) => const Scr1(),
        Scr2.routeName: (context) => const Scr2(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter_dev_guide'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    padding:
                    MaterialStateProperty.all(const EdgeInsets.all(18)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CourseLessons(),
                      ),
                    );
                  },
                  child: const Text("Course Lessons",
                      style: TextStyle(fontSize: 22)),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ButtonStyle(
                    padding:
                    MaterialStateProperty.all(const EdgeInsets.all(18)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizApp(),
                      ),
                    );
                  },
                  child: const Text("Quiz App", style: TextStyle(fontSize: 22)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
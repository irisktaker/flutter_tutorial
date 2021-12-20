// ignore_for_file: avoid_print, unused_local_variable

import 'dart:io';

class MathQuestion {
  // we can add late keyword
  // || ? => (String and can be null )
  // || create a constructor with required keyword
  // || we must initialize these values by giving them values
  // || make the type of the variable -> var
  String question;
  double answer;

  // creates a constructor with optional named parameters
  // but when we add the required keyword
  // so now we must give value for these parameters
  MathQuestion({required this.question, required this.answer});
}

// ######################################################################### $$

// create a method to return the answer
// #1 but here we can't add parameters ()
// get answer => double.parse(stdin.readLineSync()!);
// #2
// get answer {  return double.parse(stdin.readLineSync()!);  }
// #3
double getAnswer(String msg) {
  print(msg);
  // .parse()
  // var answer =  double.parse(stdin.readLineSync()!);
  // .tryParse()   |   ?? -> if null return ...
  var answer =  double.tryParse(stdin.readLineSync()!) ?? 0.0;
  return answer;
}

// ######################################################################### $$
void main(){
  MathQuestion(question: 'The result of 7 + 8 = ', answer: 15.0);
  var question_1 = MathQuestion(question: 'The result of 7 + 8 = ', answer: 15.0);
  var question_2 = MathQuestion(question: 'The result of 6 + 6 = ', answer: 12.0);
  var question_3 = MathQuestion(question: 'The result of 7 + 6 = ', answer: 13.0);
  // if we have many object 10, 100, or whatever so
  // it's the best time to use the List

  // Create a List
  // the List is from type List of type MathQuestion -> the class
  List<MathQuestion> questions = [
    MathQuestion(question: 'The result of 7 + 8 = ', answer: 15.0),
    MathQuestion(question: 'The result of 6 * 100 = ', answer: 600.0),
    MathQuestion(question: 'The result of 7 - 6 = ', answer: 1.0),
  ];

  // Calling the method
  // we will call the List => questions
  // and it's values from the index of the each values
  // and we need only the question => value
  // get the List questions of index 0 and get the question variable value
  /// this will be saved in the [[ getAnswer(String msg) ]]
  /// then saved in the variable answer and return it to
  /// this method we call here
  /// after that the value of answer will be saved in the userAnswer
  /// and we will print the userAnswer value that we get from the beginning
  var userAnswer = getAnswer(questions[0].question);
  print('You answered: $userAnswer\n_____________');

  /// let's pass for each question using the for in loop
  // for(var q in questions) {
  //   var userAnswer = getAnswer(q.question);
  //   print('You answered: $userAnswer\n_____________');
  // }

  /// now how to check the user answers ? if right or not
  for(var item in questions) {

    var userAnswer = getAnswer(item.question);
    print('You answered: $userAnswer');

    if(userAnswer == item.answer) {
      print('Correct answer');
    } else {
      print('Your answer is incorrect the correct answer is = ${item.answer}');
    }

    print('_____________');
  }

}

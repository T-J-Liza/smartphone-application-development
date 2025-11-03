import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctIndex;

  Question(this.questionText, this.options, this.correctIndex);

  bool isCorrect(int choice) => choice == correctIndex;
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void play() {
    for (var i = 0; i < questions.length; i++) {
      var q = questions[i];
      print("Q${i + 1}: ${q.questionText}");
      for (var j = 0; j < q.options.length; j++) {
        print("${j + 1}. ${q.options[j]}");
      }

      int userChoice = int.parse(stdin.readLineSync()!);
      print("Your answer: $userChoice");

      if (q.isCorrect(userChoice - 1)) {
        print("Correct!");
        score++;
      } else {
        print("Wrong!");
      }
    }

    print("Your final score: $score/${questions.length}");
  }
}

void main() {
  var quiz = Quiz([
    Question("What is 2 + 2?", ["3", "4", "5"], 1),
    Question("Wht is the language for Flutter?", ['Java', 'Dart', 'Python'], 1),
  ]);

  quiz.play();
}

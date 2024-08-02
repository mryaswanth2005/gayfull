import 'package:flutter/foundation.dart';

class QuizState with ChangeNotifier {
  final List<bool?> _answers = List.filled(5, null);

  void setAnswer(int questionIndex, bool answer) {
    _answers[questionIndex] = answer;
    notifyListeners();
  }

  bool? getAnswer(int questionIndex) {
    return _answers[questionIndex];
  }

  double get percentage {
    int totalAnswered = _answers.where((answer) => answer != null).length;
    int totalYes = _answers.where((answer) => answer == true).length;
    return totalAnswered == 0 ? 0 : (totalYes / totalAnswered) * 100;
  }
}

import 'dart:ui';

import 'package:default_project/models/question_model.dart';
import 'package:default_project/models/quiz_level.dart';


class SubjectModel {
  final String subjectName;
  final int quizTime;
  final QuizLevel level;
  final String description;
  final Color subjectColor;
  final List<QuestionModel> questions;

  SubjectModel({
    required this.description,
    required this.subjectColor,
    required this.level,
    required this.questions,
    required this.subjectName,
    required this.quizTime,
  });
}
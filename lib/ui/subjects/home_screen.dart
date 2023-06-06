import 'package:default_project/ui/subjects/widgets/subject_item.dart';
import 'package:flutter/material.dart';

import '../../data/my_repository.dart';
import '../../models/subject_model.dart';
import '../quiz_detail/quiz_dateil.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose subject"),
      ),
      body: ListView(
        children: List.generate(MyRepository.quizData.length, (index) {
          SubjectModel subject = MyRepository.quizData[index];
          return SubjectItem(
            questionsCount: "${subject.questions.length} ta",
            color: subject.subjectColor,
            subjectTitle: subject.subjectName,
            level: subject.level.name,
            time: "${subject.quizTime / 60} minut",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return QuizDetailScreen();
                  },
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
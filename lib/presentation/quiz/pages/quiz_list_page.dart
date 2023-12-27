import 'package:driver_test_apps/core/assets/assets.gen.dart';
import 'package:driver_test_apps/core/components/custom_scaffold.dart';



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/create_exam/create_exam_bloc.dart';
import '../models/quiz_model.dart';
import '../widgets/quiz_card.dart';

class QuizListPage extends StatefulWidget {
  const QuizListPage({super.key});

  @override
  State<QuizListPage> createState() => _QuizListPageState();
}

class _QuizListPageState extends State<QuizListPage> {
  final List<QuizModel> quizData = [
    QuizModel(
        image: Assets.images.quiz.generalTest.path,
        name: "Generic Test",
        type: "Multiple Choice",
        description:
            "Test ini akan menentukan apakah anda mengerti tentang peraturan lalu lintas",
        category: "Generic"),
    QuizModel(
        image: Assets.images.quiz.trafficTest.path,
        name: "Traffic Signs Test ",
        type: "Multiple Choice",
        description:
            "Test ini akan menentukan apakah anda mengerti tentang rambu-rambu lalu lintas",
        category: "Signs"),
    QuizModel(
        image: Assets.images.quiz.psychoTest.path,
        name: "Psychotest Test",
        type: "Multiple Choice",
        description:
            "Test ini merupakan test psikologi yang akan menentukan apakah anda layak untuk mendapatkan SIM atau tidak",
        category: "Psychologist"),
  ];

  @override
  void initState() {
    context.read<CreateExamBloc>().add(const CreateExamEvent.createExam());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitle: const Text("Quiz"),
      body: BlocBuilder<CreateExamBloc, CreateExamState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(child: Text("Error"));
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(
              child: Text(message),
            ),
            success: () {
              return ListView.separated(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 30.0),
                itemCount: quizData.length,
                itemBuilder: (context, index) {
                  return QuizCard(
                    data: quizData[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 20.0,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

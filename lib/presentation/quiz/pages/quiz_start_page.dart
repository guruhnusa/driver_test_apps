import 'package:driver_test_apps/core/extensions/build_context_ext.dart';
import 'package:driver_test_apps/presentation/quiz/pages/quiz_finish_page.dart';
import 'package:flutter/material.dart';

import 'package:driver_test_apps/core/components/custom_scaffold.dart';
import 'package:driver_test_apps/core/constant/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/exam_by_category/exam_by_category_bloc.dart';
import '../bloc/question_list/question_list_bloc.dart';
import '../models/quiz_model.dart';
import '../widgets/countdown_timer.dart';
import '../widgets/quiz_multiple_choice.dart';

class QuizStartPage extends StatefulWidget {
  final QuizModel data;

  const QuizStartPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<QuizStartPage> createState() => _QuizStartPageState();
}

class _QuizStartPageState extends State<QuizStartPage> {
  @override
  void initState() {
    context.read<ExamByCategoryBloc>().add(
          ExamByCategoryEvent.getExamByCategory(widget.data.category),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitle: Text(widget.data.name),
      actions: [
        BlocConsumer<ExamByCategoryBloc, ExamByCategoryState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              success: (data) {
                context.read<QuestionListBloc>().add(
                      QuestionListEvent.getQuestionList(data.data),
                    );
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const Center(
                  child: Text("Error Get Timer"),
                );
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: (data) {
                return CountdownTimer(
                  duration: data.timer,
                  onTimerCompletion: (timeRemaining) {
                    context.pushReplacement(
                      QuizFinishPage(data: widget.data),
                    );
                  },
                );
              },
            );
          },
        ),
        const SizedBox(width: 20.0),
      ],
      body: BlocBuilder<QuestionListBloc, QuestionListState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                  child: Center(child: CircularProgressIndicator()));
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            success: (data, currentIndex, isNext) {
              return ListView(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 30.0),
                children: [
                  const Text(
                    'Question',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: LinearProgressIndicator(
                          value: (currentIndex + 1) / data.length,
                          minHeight: 7,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: AppColors.primaryYellow,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        '${currentIndex + 1}/${data.length}',
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  QuizMultipleChoice(data: widget.data),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

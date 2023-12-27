import 'package:driver_test_apps/presentation/authentication/bloc/answer_question/answer_question_bloc.dart';
import 'package:driver_test_apps/presentation/quiz/widgets/answer_choices.dart';

import 'package:flutter/material.dart';

import 'package:driver_test_apps/core/extensions/build_context_ext.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/buttons.dart';
import '../bloc/question_list/question_list_bloc.dart';
import '../models/quiz_model.dart';
import '../pages/quiz_finish_page.dart';

class QuizMultipleChoice extends StatefulWidget {
  final QuizModel data;

  const QuizMultipleChoice({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<QuizMultipleChoice> createState() => _QuizMultipleChoiceState();
}

class _QuizMultipleChoiceState extends State<QuizMultipleChoice> {
  String selectedAnswer = '';
  String theAnswer = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionListBloc, QuestionListState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return const Center(child: CircularProgressIndicator());
          },
          error: (message) {
            return Center(
              child: Text(message),
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          success: (data, currentIndex, isNext) {
            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(24.0),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 17,
                        offset: const Offset(0, 1),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      widget.data.category == "Signs"
                          ? Center(
                              child: Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        NetworkImage(data[currentIndex].image),
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox(),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data[currentIndex].question,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                            fontSize: 18, color: Color(0xFF383A44)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnswerChoices(
                      label: data[currentIndex].answerA,
                      onChanged: (value) {
                        setState(
                          () {
                            selectedAnswer = value;
                            theAnswer = "a";
                          },
                        );
                      },
                      isSelected: selectedAnswer == data[currentIndex].answerA,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AnswerChoices(
                      label: data[currentIndex].answerB,
                      onChanged: (value) {
                        setState(
                          () {
                            selectedAnswer = value;
                            theAnswer = "b";
                          },
                        );
                      },
                      isSelected: selectedAnswer == data[currentIndex].answerB,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AnswerChoices(
                      label: data[currentIndex].answerC,
                      onChanged: (value) {
                        setState(
                          () {
                            selectedAnswer = value;
                            theAnswer = "c";
                          },
                        );
                      },
                      isSelected: selectedAnswer == data[currentIndex].answerC,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AnswerChoices(
                      label: data[currentIndex].answerD,
                      onChanged: (value) {
                        setState(
                          () {
                            selectedAnswer = value;
                            theAnswer = "d";
                          },
                        );
                      },
                      isSelected: selectedAnswer == data[currentIndex].answerD,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    theAnswer.isEmpty
                        ? Button.filled(
                            height: 50,
                            disabled: true,
                            onPressed: () {},
                            label: 'Next Question',
                          )
                        : isNext
                            ? Button.filled(
                                height: 50,
                                onPressed: () {
                                  context.read<AnswerQuestionBloc>().add(
                                        AnswerQuestionEvent.answerQuestion(
                                          "${data[currentIndex].id}",
                                          theAnswer,
                                        ),
                                      );
                                  context.read<QuestionListBloc>().add(
                                        const QuestionListEvent.nextQuestion(),
                                      );
                                  setState(
                                    () {
                                      selectedAnswer = '';
                                      theAnswer = '';
                                    },
                                  );
                                },
                                label: 'Next Question',
                              )
                            : Button.filled(
                                height: 50,
                                onPressed: () {
                                  context.read<AnswerQuestionBloc>().add(
                                        AnswerQuestionEvent.answerQuestion(
                                          "${data[currentIndex].id}",
                                          theAnswer,
                                        ),
                                      );
                                  context.push(
                                    QuizFinishPage(
                                      data: widget.data,
                                    ),
                                  );
                                },
                                label: 'Finish',
                              )
                  ],
                )
              ],
            );
          },
        );
      },
    );
  }
}

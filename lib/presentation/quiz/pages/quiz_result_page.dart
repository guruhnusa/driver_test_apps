// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'package:driver_test_apps/core/components/buttons.dart';
import 'package:driver_test_apps/core/components/custom_scaffold.dart';
import 'package:driver_test_apps/core/constant/colors.dart';
import 'package:driver_test_apps/core/extensions/build_context_ext.dart';
import 'package:driver_test_apps/presentation/home/pages/dashboard_page.dart';
import 'package:driver_test_apps/presentation/quiz/bloc/get_score_by_category_bloc/get_score_by_category_bloc.dart';

import '../models/quiz_model.dart';
import '../widgets/result_value.dart';

class QuizResultPage extends StatefulWidget {
  final QuizModel data;
  const QuizResultPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<QuizResultPage> createState() => _QuizResultPageState();
}

class _QuizResultPageState extends State<QuizResultPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showBackButton: false,
      appBarTitle: const Text("Result Test"),
      body: BlocBuilder<GetScoreByCategoryBloc, GetScoreByCategoryState>(
          builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return const Center(child: CircularProgressIndicator());
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          error: (message) {
            return Center(
              child: Text(message),
            );
          },
          success: (data) {
            return SizedBox(
              width: context.deviceWidth,
              height: context.deviceHeight,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 55),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Congratulation!",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "Traffic Sign Test",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryBlue),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Column(
                      children: [
                        CircularStepProgressIndicator(
                          totalSteps: data.correctAnswer + data.incorrectAnswer,
                          currentStep: data.correctAnswer,
                          stepSize: 10,
                          selectedColor: AppColors.primaryGreen,
                          unselectedColor: Colors.grey.shade400,
                          padding: 0,
                          width: 180,
                          height: 180,
                          selectedStepSize: 30,
                          unselectedStepSize: 30,
                          roundedCap: (_, __) => true,
                          child: Center(
                            child: Text(
                              "${data.score}",
                              style: const TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.secondaryBlue),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ResultValue.correct(
                            label: "Correct", data.correctAnswer),
                        const SizedBox(
                          width: 22,
                        ),
                        ResultValue.wrong(label: "Wrong", data.incorrectAnswer),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Button.filled(
                      onPressed: () {
                        context.pushReplacement(
                          const DashboardPage(),
                        );
                      },
                      label: "Back To Home",
                      height: 50,
                    )
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}

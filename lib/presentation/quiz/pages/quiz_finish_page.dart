// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:driver_test_apps/core/assets/assets.gen.dart';
import 'package:driver_test_apps/core/components/buttons.dart';
import 'package:driver_test_apps/core/extensions/build_context_ext.dart';
import 'package:driver_test_apps/presentation/quiz/bloc/get_score_by_category_bloc/get_score_by_category_bloc.dart';

import 'package:flutter/material.dart';

import 'package:driver_test_apps/core/components/custom_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lottie/lottie.dart';

import '../models/quiz_model.dart';
import 'quiz_result_page.dart';

class QuizFinishPage extends StatefulWidget {
  final QuizModel data;
  const QuizFinishPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<QuizFinishPage> createState() => _QuizFinishPageState();
}

class _QuizFinishPageState extends State<QuizFinishPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitle: Text(widget.data.name),
      body: SizedBox(
        width: context.deviceWidth,
        height: context.deviceHeight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Lottie.asset(Assets.lottie.cup, height: 350, width: 350),
              const Text(
                "Yeayy Finish",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "You have completed the quiz",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              Button.outlined(
                onPressed: () {},
                label: "Back to home",
                height: 50,
              ),
              const SizedBox(
                height: 20,
              ),
              Button.filled(
                onPressed: () {
                  context.read<GetScoreByCategoryBloc>().add(
                        GetScoreByCategoryEvent.getScoreByCategory(
                            widget.data.category),
                      );
                  context.push(QuizResultPage(
                    data: widget.data,
                  ));
                },
                label: "See Result",
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}

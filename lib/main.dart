import 'package:driver_test_apps/data/datasources/remote/auth_remote_datasource.dart';
import 'package:driver_test_apps/data/datasources/remote/exam_remote_datasource.dart';
import 'package:driver_test_apps/data/datasources/remote/signs_remote_datasource.dart';
import 'package:driver_test_apps/data/datasources/remote/tutorial_video_remote_datasource.dart';
import 'package:driver_test_apps/presentation/authentication/bloc/answer_question/answer_question_bloc.dart';

import 'package:driver_test_apps/presentation/authentication/bloc/login/login_bloc.dart';
import 'package:driver_test_apps/presentation/authentication/bloc/register/register_bloc.dart';
import 'package:driver_test_apps/presentation/authentication/pages/login_page.dart';
import 'package:driver_test_apps/presentation/encyclopedia/bloc/get_video/get_video_bloc.dart';

import 'package:driver_test_apps/presentation/history/bloc/history/history_bloc.dart';
import 'package:driver_test_apps/presentation/onboarding/pages/onboarding_page.dart';
import 'package:driver_test_apps/presentation/quiz/bloc/get_score_by_category_bloc/get_score_by_category_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/datasources/local/auth_local_datasource.dart';
import 'data/datasources/local/onboarding_local_datasource.dart';
import 'data/models/response/auth_response_model.dart';
import 'presentation/encyclopedia/bloc/get_sign/get_sign_by_category_bloc.dart';
import 'presentation/home/pages/dashboard_page.dart';
import 'presentation/profile/bloc/logout/logout_bloc.dart';
import 'presentation/quiz/bloc/create_exam/create_exam_bloc.dart';
import 'presentation/quiz/bloc/exam_by_category/exam_by_category_bloc.dart';
import 'presentation/quiz/bloc/question_list/question_list_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(
            AuthRemoteDataSource(),
          ),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(
            AuthRemoteDataSource(),
          ),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(
            AuthRemoteDataSource(),
          ),
        ),
        BlocProvider(
          create: (context) => CreateExamBloc(
            ExamRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => ExamByCategoryBloc(
            ExamRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => QuestionListBloc(),
        ),
        BlocProvider(
          create: (context) => AnswerQuestionBloc(
            ExamRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => HistoryBloc(
            ExamRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => GetScoreByCategoryBloc(
            ExamRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => GetSignByCategoryBloc(
            SignRemoteDataSource(),
          ),
        ),
        BlocProvider(
          create: (context) => GetVideoBloc(
            TutorialVideoRemoteDatasource(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Driver Test Apps',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FutureBuilder<AuthResponseModel>(
          future: AuthLocalDataSource().getAuthData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const DashboardPage();
            } else {
              return FutureBuilder<bool>(
                future: OnboardingLocalDatasource().getIsFirstTime(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return snapshot.data!
                        ? const LoginPage()
                        : const OnboardingPage();
                  } else {
                    return const OnboardingPage();
                  }
                },
              );
            }
          },
        ),
      ),
    );
  }
}

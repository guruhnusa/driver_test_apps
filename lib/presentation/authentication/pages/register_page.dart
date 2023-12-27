import 'package:driver_test_apps/core/extensions/build_context_ext.dart';

import 'package:driver_test_apps/data/models/request/register_request_model.dart';
import 'package:driver_test_apps/presentation/authentication/bloc/register/register_bloc.dart';
import 'package:driver_test_apps/presentation/authentication/widgets/register_success_dialog.dart';
import 'package:driver_test_apps/presentation/home/pages/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/custom_text_field.dart';
import '../../../core/constant/colors.dart';
import '../../../data/datasources/local/auth_local_datasource.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController usernameC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Register',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            CustomTextField(
              controller: usernameC,
              label: "Username",
              obscureText: false,
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextField(
              controller: emailC,
              label: "Email",
              obscureText: false,
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextField(
              controller: passwordC,
              label: "Password",
              obscureText: true,
            ),
            const SizedBox(
              height: 24,
            ),
            BlocConsumer<RegisterBloc, RegisterState>(
              listener: (context, state) {
                state.maybeWhen(
                    orElse: () {},
                    loading: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const RegisterSuccessDialog();
                        },
                      );
                    },
                    success: (data) {
                      AuthLocalDataSource().saveAuthData(data);
                      context.pushReplacement(const DashboardPage());
                    },
                    error: (message) {
                      SnackBar(
                        content: Text(message),
                        backgroundColor: Colors.red,
                      );
                    });
              },
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => Button.filled(
                    label: "Register",
                    height: 56,
                    onPressed: () {
                      final request = RegisterRequestModel(
                          name: usernameC.text,
                          email: emailC.text,
                          password: passwordC.text);
                      context.read<RegisterBloc>().add(
                            RegisterEvent.register(request),
                          );
                    },
                  ),
                );
              },
            ),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: const Text.rich(
                TextSpan(
                  text: 'Already have an account? ',
                  children: [
                    TextSpan(
                      text: 'Sign in',
                      style: TextStyle(
                          color: AppColors.secondaryRed,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));
  }
}

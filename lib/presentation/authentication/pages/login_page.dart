import 'package:driver_test_apps/core/assets/assets.gen.dart';
import 'package:driver_test_apps/core/components/buttons.dart';
import 'package:driver_test_apps/core/components/custom_text_field.dart';
import 'package:driver_test_apps/core/constant/colors.dart';
import 'package:driver_test_apps/core/extensions/build_context_ext.dart';

import 'package:driver_test_apps/data/models/request/login_request_model.dart';
import 'package:driver_test_apps/presentation/authentication/bloc/login/login_bloc.dart';
import 'package:driver_test_apps/presentation/authentication/pages/register_page.dart';
import 'package:driver_test_apps/presentation/authentication/widgets/divider_login.dart';
import 'package:driver_test_apps/presentation/authentication/widgets/sosmed_login.dart';
import 'package:driver_test_apps/presentation/home/pages/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/datasources/local/auth_local_datasource.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login  ',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
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
            height: 12,
          ),
          const Text(
            "Forgot Password?",
            style: TextStyle(
                color: AppColors.secondaryRed, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 42,
          ),
          BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                success: (data) {
                  AuthLocalDataSource().saveAuthData(data);
                  context.pushReplacement(
                    const DashboardPage(),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Login Success"),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: Colors.red,
                    ),
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return Button.filled(
                      height: 56,
                      onPressed: () {
                        final request = LoginRequestModel(
                          email: emailC.text,
                          password: passwordC.text,
                        );
                        context.read<LoginBloc>().add(
                              LoginEvent.login(request),
                            );
                      },
                      label: "Login");
                },
                loading: () {
                  return Button.filled(
                      height: 56, onPressed: () {}, label: "Loading...");
                },
              );
            },
          ),
          const SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {
              context.push(
                const RegisterPage(),
              );
            },
            child: const Text.rich(
              TextSpan(
                text: 'Don\'t have an account? ',
                children: [
                  TextSpan(
                    text: 'Sign up',
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
          const DividerOr(),
          SosmedLogin(
            name: 'Google',
            logo: Assets.images.sosmed.logoGoogle.path,
            onPressed: () {},
          ),
          const SizedBox(height: 16.0),
          SosmedLogin(
            name: 'Apple',
            logo: Assets.images.sosmed.logoApple.path,
            onPressed: () {},
          ),
          const SizedBox(height: 16.0),
          SosmedLogin(
            name: 'Facebook',
            logo: Assets.images.sosmed.logoFacebook.path,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

import 'package:driver_test_apps/core/extensions/build_context_ext.dart';

import 'package:driver_test_apps/presentation/authentication/pages/login_page.dart';
import 'package:driver_test_apps/presentation/profile/bloc/logout/logout_bloc.dart';
import 'package:flutter/material.dart';

import 'package:driver_test_apps/core/constant/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/datasources/local/auth_local_datasource.dart';
import '../widgets/profile_menu.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlue,
        title: const Text("Profile"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
        leading: const SizedBox(),
      ),
      body: Column(
        children: [
          const SizedBox(height: 38),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(100.0)),
            child: Image.network(
              'https://i.pravatar.cc/200',
              width: 152.0,
              height: 152.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Guruh Nusantara",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
          const Text(
            "guruhnusantara1291@gmail.com",
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 32),
          Expanded(
            child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: ListView(
                  children: [
                    ProfileMenu(
                      leading: Icons.person,
                      title: "Edit Profile",
                      trailing: Icons.chevron_right,
                      onTap: () {},
                    ),
                    ProfileMenu(
                      leading: Icons.lock,
                      title: "Change Password",
                      trailing: Icons.chevron_right,
                      onTap: () {},
                    ),
                    BlocConsumer<LogoutBloc, LogoutState>(
                      listener: (context, state) {
                        state.maybeWhen(
                            orElse: () {},
                            success: () {
                              context.pushReplacement(const LoginPage());
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Logout Success"),
                                  backgroundColor: Colors.green,
                                ),
                              );
                              AuthLocalDataSource().removeAuthData();
                            },
                            error: (message) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(message),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            });
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () {
                            return ProfileMenu(
                              leading: Icons.logout,
                              title: "Logout",
                              trailing: Icons.chevron_right,
                              onTap: () {
                                context.read<LogoutBloc>().add(
                                      const LogoutEvent.logout(),
                                    );
                              },
                            );
                          },
                          loading: () {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        );
                      },
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

import 'package:course_app/ui/widgets/sign_in/app_bar.dart';
import 'package:course_app/ui/widgets/sign_in/login_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildThreeIconLogin(context),
                Center(
                    child: reusableText(
                        'Or use your email account to login Email')),
                Container(
                  margin: EdgeInsets.only(top: 36.h),
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText('Email'),
                      SizedBox(height: 5.h),
                      buildTextField(
                          'Enter your email address', 'email', 'user'),
                      reusableText('Password'),
                      SizedBox(height: 5.h),
                      buildTextField('Enter your password', 'password', 'lock'),
                      forgotPassword(),
                      buildLogInAndRegBtn("Log In", "login"),
                      buildLogInAndRegBtn("Register", "register"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

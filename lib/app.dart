import 'package:course_app/ui/screens/home_screen/home.dart';
import 'package:course_app/ui/screens/sign_in_screen/sign_in.dart';
import 'package:course_app/ui/screens/welcome_screens/bloc/welcome_blocs.dart';
import 'package:course_app/ui/screens/welcome_screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => WelcomeBloc(),
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          theme: ThemeData(
              appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
          )),
          debugShowCheckedModeBanner: false,
          home: const Welcome(),
          routes: {
            "welcome": (context) => const Welcome(),
            "home": (context) => const Home(),
            "sign_in": (context) => const SignIn(),
          },
        ),
      ),
    );
  }
}

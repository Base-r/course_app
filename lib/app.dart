import 'package:course_app/ui/screens/home/home.dart';
import 'package:course_app/ui/screens/welcome/bloc/welcome_blocs.dart';
import 'package:course_app/ui/screens/welcome/welcome.dart';
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
        builder: (context, child) =>  MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const Welcome(),
          routes: {
            "home": (context) => const Home(),
            "welcome": (context) => const Welcome(),
          },
        ),
      ),
    );
  }
}

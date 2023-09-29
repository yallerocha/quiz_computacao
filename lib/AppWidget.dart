import 'package:flutter/material.dart';

import 'features/quiz/QuizPage.dart';
import 'features/splash/SplashPage.dart';
import 'features/onboarding/OnboardingPage.dart';
import 'features/final/FinalPage.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        debugShowCheckedModeBanner: false,
        title: 'Quiz PET Computação',
        initialRoute: '/splash',
        routes: {
          '/onboarding': (context) => const OnboardingPage(),
          '/splash': (context) => const SplashPage(),
          '/quiz': (context) => const QuizPage(),
          '/final': (context) {
              final acertos = ModalRoute.of(context)!.settings.arguments as int;
              return FinalPage(acertos: acertos);
            }
        });
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomodoro_app/presentation/pages/onboarding/onboarding_page.dart';
import 'bindings/onboarding_binding.dart';
import 'presentation/pages/pomodoro/pomodoro_page.dart';
import 'bindings/pomodoro_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pomodoro",
      // theme: ThemeData.dark(),
      initialRoute: '/onboarding',
      getPages: [
        GetPage(
          name: '/onboarding',
          page: () => const OnboardingPage(),
          binding: OnboardingBinding(),
        ),
        GetPage(
          name: '/home',
          page: () => const PomodoroPage(),
          binding: PomodoroBinding(),
        ),
      ],
    );
  }
}
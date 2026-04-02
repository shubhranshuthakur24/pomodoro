import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/common/dot_painter.dart';
import '../../widgets/onboarding_page/bottom_wave_painter.dart';
import '../../widgets/onboarding_page/clock_painter.dart';
import '../../widgets/onboarding_page/top_wave_painter.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF3B3B98),
                  Color(0xFF1B1B3A),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          /// Top Wave
          CustomPaint(
            size: Size.infinite,
            painter: TopWavePainter(),
          ),

          /// Bottom Wave
          CustomPaint(
            size: Size.infinite,
            painter: BottomWavePainter(),
          ),

          /// UI Content
          SafeArea(
            child: Column(
              children: [
                /// Skip
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Skip",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),

                const Spacer(),

                /// Title
                const Text(
                  "Plan your work\nand stay productive",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 40),

                /// Clock Illustration
                SizedBox(
                  height: 250,
                  width: 250,
                  child: CustomPaint(
                    painter: ClockPainter(),
                  ),
                ),

                const Spacer(),

                /// Dots
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Dot(active: true),
                    Dot(),
                    Dot(),
                  ],
                ),

                const SizedBox(height: 20),

                /// Button
                InkWell(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF6C63FF), Color(0xFF8E7CFF)],
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Next >",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  onTap: (){
                    Get.offAndToNamed('/home');
                  },
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
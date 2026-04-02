import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/pomodoro_controller.dart';
import '../../../core/utils/time_formatter.dart';
import '../../widgets/pomodoro_page/timer_circle.dart';
import '../../widgets/pomodoro_page/timer_text.dart';
import '../../widgets/pomodoro_page/control_buttons.dart';

class PomodoroPage extends GetView<PomodoroController> {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TimerCircle(
              timeLeft: controller.timeLeft.value,
              totalTime: 1500,
            ),
            const SizedBox(height: 20),
            TimerText(
              text: formatTime(controller.timeLeft.value),
            ),
            const SizedBox(height: 20),
            ControlButtons(
              onStart: controller.start,
              onPause: controller.pause,
              onReset: controller.reset,
            ),
          ],
        )),
      ),
    );
  }
}
import 'dart:async';
import 'package:get/get.dart';
import '../../domain/usecases/start_timer.dart';
import '../../domain/usecases/stop_timer.dart';
import '../../core/constants/durations.dart';

class PomodoroController extends GetxController {
  final StartTimer startTimer;
  final StopTimer stopTimer;

  PomodoroController(this.startTimer, this.stopTimer);

  final RxInt timeLeft = Durations.pomodoro.obs;
  final RxBool isRunning = false.obs;

  StreamSubscription? _subscription;

  void start() {
    isRunning.value = true;

    _subscription = startTimer(timeLeft.value).listen((time) {
      timeLeft.value = time;

      if (time == 0) {
        isRunning.value = false;
      }
    });
  }

  void pause() {
    _subscription?.cancel();
    stopTimer();
    isRunning.value = false;
  }

  void reset() {
    pause();
    timeLeft.value = Durations.pomodoro;
  }

  @override
  void onClose() {
    _subscription?.cancel();
    super.onClose();
  }
}
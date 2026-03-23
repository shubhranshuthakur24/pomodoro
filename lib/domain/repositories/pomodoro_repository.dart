abstract class PomodoroRepository {
  Stream<int> startTimer(int duration);
  void stopTimer();
}
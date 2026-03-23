import '../repositories/pomodoro_repository.dart';

class StopTimer{
  final PomodoroRepository repostiory;

  StopTimer(this.repostiory);

  void call(){
    repostiory.stopTimer();
  }
}
import '../repositories/pomodoro_repository.dart';

class StartTimer{
  final PomodoroRepository repository;

  StartTimer (this.repository);

  Stream<int> call(int duration){
    return repository.startTimer(duration);
  }
}
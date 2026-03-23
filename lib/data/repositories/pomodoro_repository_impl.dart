import '../../domain/repositories/pomodoro_repository.dart';
import '../../data/datasources/timer_datasource.dart';

class PomodoroRepositoryImpl implements PomodoroRepository{
  final TimerDatasource datasource;
  PomodoroRepositoryImpl(this.datasource);

  @override
  Stream<int> startTimer(int duration){
    return datasource.start(duration);
  }

  @override
  void stopTimer(){
    datasource.stop();
  }
}
import 'dart:async';

class TimerDatasource {
  Timer? _timer;

  Stream<int> start(int duration){
    final controller = StreamController<int>();
    int timeLeft = duration;
    _timer = Timer.periodic(const Duration(seconds:1), (timer){
      timeLeft--;
      controller.add(timeLeft);
      if (timeLeft <= 0 ){
        timer.cancel();
        controller.close();
      }});
    return controller.stream;
  }
  void stop(){
    _timer?.cancel();
  }

}
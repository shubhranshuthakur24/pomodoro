import 'package:get/get.dart';
import '../data/datasources/timer_datasource.dart';
import '../data/repositories/pomodoro_repository_impl.dart';
import '../domain/repositories/pomodoro_repository.dart';
import '../domain/usecases/start_timer.dart';
import '../domain/usecases/stop_timer.dart';
import '../presentation/controllers/pomodoro_controller.dart';

class PomodoroBinding extends Bindings {
  @override
  void dependencies() {
    // Datasource
    Get.lazyPut<TimerDatasource>(() => TimerDatasource());

    // Repository (IMPORTANT: bind interface to implementation)
    Get.lazyPut<PomodoroRepository>(
          () => PomodoroRepositoryImpl(Get.find()),
    );

    // Usecases
    Get.lazyPut(() => StartTimer(Get.find()));
    Get.lazyPut(() => StopTimer(Get.find()));

    // Controller
    Get.lazyPut(() => PomodoroController(Get.find(), Get.find()));
  }
}
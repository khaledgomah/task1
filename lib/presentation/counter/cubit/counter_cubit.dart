
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common/service_locator.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  late int counter = getIt<SharedPreferencesWithCache>().getInt('counter') ?? 0;

  void incrementCounter() {
    counter++;
    getIt<SharedPreferencesWithCache>().setInt('counter', counter);
    emit(CounterChangeState());
  }

  void decrementCounter() {
    counter--;
    getIt<SharedPreferencesWithCache>().setInt('counter', counter);
    emit(CounterChangeState());
  }  
}

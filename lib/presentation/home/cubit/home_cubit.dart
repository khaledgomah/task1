import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/presentation/counter/cubit/counter_cubit.dart';
import '../../counter/view/counter_view.dart';
import '../../notes/view/notes_view.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  int selectedIndex = 0;

  void pageChanged(int index) {
    selectedIndex = index;
    emit(PageChangedState());
  }


  Widget selectScreen() {
    switch (selectedIndex) {
      case 0:
        return BlocProvider(
          create: (context) => CounterCubit(),
          child: CounterView(),
        );
      case 1:
        return NotesView();
      default:
        return CounterView();
    }
  }
}

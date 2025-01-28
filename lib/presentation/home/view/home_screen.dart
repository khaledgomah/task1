import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/presentation/home/cubit/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: BlocProvider.of<HomeCubit>(context).selectedIndex,
              items: [
                BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      BlocProvider.of<HomeCubit>(context).pageChanged(0);
                    },
                    icon: const Icon(
                      Icons.numbers,
                    ),
                  ),
                  label: 'Counter',
                ),
                BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      BlocProvider.of<HomeCubit>(context).pageChanged(1);
                    },
                    icon: const Icon(
                      Icons.list,
                    ),
                  ),
                  label: 'Notes',
                ),
              ]),
          
          body: BlocProvider.of<HomeCubit>(context).selectScreen(),
        );
      },
    );
  }
}

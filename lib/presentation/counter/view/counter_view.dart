import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/presentation/counter/cubit/counter_cubit.dart';
import 'package:task1/presentation/resources/color_manager.dart';
import 'package:task1/presentation/resources/font_style_manager.dart';

class CounterView extends StatelessWidget {
  const CounterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Counter'),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                BlocProvider.of<CounterCubit>(context).counter.toString(),
                style: FontStyleManager.textStyle50Bold.copyWith(fontSize: 100),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .incrementCounter();
                      },
                      child: Icon(
                        Icons.add,
                        color: ColorManager.white,
                      )),
                  TextButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .decrementCounter();
                      },
                      child: Icon(
                        Icons.remove,
                        color: ColorManager.white,
                      )),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}

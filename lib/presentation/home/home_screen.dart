import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1/presentation/base/service_locator.dart';
import 'package:task1/presentation/resources/color_manager.dart';
import 'package:task1/presentation/resources/font_style_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final SharedPreferencesAsync asyncPrefs = SharedPreferencesAsync();

class _HomeScreenState extends State<HomeScreen> {
  late int _counter =
      getIt<SharedPreferencesWithCache>().getInt('counter') ?? 0;
  void _incrementCounter() {
    _counter++;
    getIt<SharedPreferencesWithCache>().setInt('counter', _counter);
  }

  void _decrementCounter() {
    _counter--;
    getIt<SharedPreferencesWithCache>().setInt('counter', _counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _counter.toString(),
            style: FontStyleManager.textStyle50Bold.copyWith(fontSize: 100),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      _incrementCounter();
                    });
                  },
                  child: Icon(
                    Icons.add,
                    color: ColorManager.white,
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _decrementCounter();
                    });
                  },
                  child: Icon(
                    Icons.remove,
                    color: ColorManager.white,
                  )),
            ],
          )
        ],
      ),
    );
  }
}

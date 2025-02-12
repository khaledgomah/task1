import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/presentation/notes/cubit/notes_cubit.dart';
import 'package:task1/presentation/resources/routs_manager.dart';
import 'package:task1/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routs.login,
        onGenerateRoute: generateRouts,
        theme: getDataTheme(),
      ),
    );
  }
}

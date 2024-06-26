import 'package:bloc_in_flutter_project/home.dart';
import 'package:bloc_in_flutter_project/view/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child:   const MaterialApp(
        // theme: const ThemeMode(),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

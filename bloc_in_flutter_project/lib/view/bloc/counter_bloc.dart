import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<Increase>((event, emit) {
      emit(CounterState(counter: state.counter! + 1,tap_count: state.tap_count! +1,colors: Color.fromARGB(255, 0, 255, 0)));
    });

    on<Decrease>((event, emit) {
      emit(CounterState(counter: state.counter! -1,tap_count: state.tap_count! +1,colors: Color.fromARGB(255,255, 0, 0)));
    });

    on<ResetCount>((event, emit) {
      emit(CounterState(counter: state.counter =0,tap_count: state.tap_count =0,colors: Colors.grey));
    });

    on<Tap>((event, emit) {
      emit(CounterState(counter: state.counter =0,tap_count: state.tap_count! +1,colors: Color.fromARGB(255, 0, 0, 0)));
    });
  }
}

part of 'counter_bloc.dart';

@immutable
 class CounterState {
  int ?counter;
  int ? tap_count;
  Color ? colors;
  CounterState({required this.counter,required this.tap_count,required this.colors});
}

final class CounterInitial extends CounterState {
  CounterInitial():super(counter: 0,tap_count: 0,colors: const Color.fromARGB(255, 0, 0, 0));
}


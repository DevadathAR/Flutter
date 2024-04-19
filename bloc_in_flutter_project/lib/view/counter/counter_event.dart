part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class Increase extends CounterEvent{}

class Decrease extends CounterEvent{}

class ResetCount extends CounterEvent{}

class Tap extends CounterEvent{}

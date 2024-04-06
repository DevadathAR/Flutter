part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class Increase extends CounterEvent{}

// class IncreaseHoldPress extends CounterEvent{}

class Decrease extends CounterEvent{}

// class DecreaseHoldPress extends CounterEvent{}

class ResetCount extends CounterEvent{}

class Tap extends CounterEvent{}

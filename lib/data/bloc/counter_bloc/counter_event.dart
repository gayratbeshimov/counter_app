part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent extends Equatable {}

 class CounterIncrement extends CounterEvent {
  @override
  List<Object?> get props => [];
}

 class CounterDecrement extends CounterEvent {
  @override
  List<Object?> get props => [];
}

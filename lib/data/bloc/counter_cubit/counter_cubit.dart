import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() async {
    emit(state + 1);
    // await Future.delayed(const Duration(seconds: 1));
    // emit(state + 1);
  }

  void decrement() => emit(state - 1);
}

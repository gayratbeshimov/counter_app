import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    /// Buyerda Blocdagi event va statelarni o'zgarishini consolega print qilib boradi
    print('${bloc.runtimeType} $change');
  }
}
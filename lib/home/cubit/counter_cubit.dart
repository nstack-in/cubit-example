import 'package:bloc_example/home/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(CounterState());

  void increment(){
    final count = state.count + 1;
    final updatedState = CounterState(count: count);
    emit(updatedState);
  }

  void decrement(){
    final count = state.count - 1;
    final updatedState = CounterState(count: count);
    emit(updatedState);
  }
}
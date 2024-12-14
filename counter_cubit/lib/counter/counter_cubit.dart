/*
  COUNTER CUBIT: Simplified version of BloC for easy statemanagement.
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  //CONSTRUCTOR: gets the initial state.
  CounterCubit(super.initialState);

  //INCREMENT: add 1 to current state.
  void increment() => emit(state + 1);

  //DECREMENT: minus 1 to current state.
  void decrement() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    debugPrint(change.toString());
  }
}

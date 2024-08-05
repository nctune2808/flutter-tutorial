import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'quantity_event.dart';
import 'quantity_state.dart';

class QuantityBloc extends Bloc<QuantityEvent, QuantityState> {
  QuantityBloc() : super(QuantityInitial(amount: 0, color: Colors.black)) {
    on<IncreaseQuantityEvent>((event, emit) {
      emit(state.copyWith(amount: state.amount + 1));
    });

    on<DecreaseQuantityEvent>((event, emit) {
      emit(state.copyWith(amount: state.amount - 1));
    });

    on<ChangeColorEvent>((event, emit) {
      emit(state.copyWith(color: event.selectedColor));
    });
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class QuantityState extends Equatable {
  final int amount;
  final Color color;

  const QuantityState({required this.amount, required this.color});

  @override
  List<Object> get props => [amount, color];

  QuantityState copyWith({
    int? amount,
    Color? color,
  }) {
    return QuantityValueState(
      amount: amount ?? this.amount,
      color: color ?? this.color,
    );
  }
}

class QuantityInitial extends QuantityState {
  const QuantityInitial({required int amount, required Color color})
      : super(amount: amount, color: color);
}

class QuantityValueState extends QuantityState {
  const QuantityValueState({required int amount, required Color color})
      : super(amount: amount, color: color);
}

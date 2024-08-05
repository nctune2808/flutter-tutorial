import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class QuantityEvent extends Equatable {
  const QuantityEvent();

  @override
  List<Object> get props => [];
}

class IncreaseQuantityEvent extends QuantityEvent {}

class DecreaseQuantityEvent extends QuantityEvent {}

class ChangeColorEvent extends QuantityEvent {
  final Color selectedColor;
  ChangeColorEvent({
    required this.selectedColor,
  });
}

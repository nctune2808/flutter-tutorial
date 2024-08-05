import 'package:flutter/material.dart';

class NeumorphismDecorations {
  static BoxDecoration getContainerDecoration(double radius) {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(radius),
      boxShadow: const [
        BoxShadow(
          color: Colors.white,
          offset: Offset(-5, -5),
          blurRadius: 10,
        ),
        BoxShadow(
          color: Colors.black12,
          offset: Offset(5, 5),
          blurRadius: 10,
        ),
      ],
    );
  }

  static BoxDecoration onlyShadow(double radius) {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(radius),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(5, 5),
          blurRadius: 10,
        ),
      ],
    );
  }

  static BoxDecoration getCircleDecoration() {
    return const BoxDecoration(
      color: Color(0xFFE0E5EC),
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Colors.white,
          offset: Offset(-5, -5),
          blurRadius: 10,
        ),
        BoxShadow(
          color: Colors.black12,
          offset: Offset(5, 5),
          blurRadius: 10,
        ),
      ],
    );
  }
}

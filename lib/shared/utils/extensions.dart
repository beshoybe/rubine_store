import 'package:flutter/material.dart';

extension ContextExtentions on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
}

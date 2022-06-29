import 'package:flutter/material.dart';

enum SnackBarType { success, error }

ScaffoldFeatureController getCustomSnackBar({
  required BuildContext context,
  required String message,
  required SnackBarType type,
  Key? key,
}) {
  final colors = Theme.of(context).colorScheme;
  final textColor = type == SnackBarType.error ? colors.error : colors.primary;
  final backgroudColor = type == SnackBarType.error
      ? colors.errorContainer
      : colors.primaryContainer;

  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      key: key,
      content: Text(
        message,
        style: TextStyle(color: textColor),
      ),
      backgroundColor: backgroudColor,
    ),
  );
}

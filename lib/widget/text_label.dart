// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget {
  final String? texto;
  final Color? corFont;

  const TextLabel({this.texto, this.corFont});
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      texto!,
      maxLines: 4,
      minFontSize: 3,
      maxFontSize: 20,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: corFont ?? Colors.black,
      ),
    );
  }
}

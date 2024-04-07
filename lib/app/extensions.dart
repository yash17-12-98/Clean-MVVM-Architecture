/// extension on String

import 'package:flutter_clean_architecture/data/mapper/mapper.dart';

extension NonNullString on String? {
  String orEmpty() {
    return this ?? EMPTY;
  }
}

/// extension on Integer

extension NonNullInteger on int? {
  int orZero() {
    return this ?? ZERO;
  }
}

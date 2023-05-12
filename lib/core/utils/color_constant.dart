import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color indigoA200 = fromHex('#6a7afa');

  static Color blueA200 = fromHex('#4d8af0');

  static Color lightBlue800 = fromHex('#1f8ab4');

  static Color greenA400 = fromHex('#01ff57');

  static Color black900 = fromHex('#000000');

  static Color teal900 = fromHex('#004848');

  static Color gray600 = fromHex('#828282');

  static Color gray700 = fromHex('#686868');

  static Color gray400 = fromHex('#c4c4c4');

  static Color gray5006c = fromHex('#6c8f92a1');

  static Color gray60001 = fromHex('#707070');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color lime600 = fromHex('#c5aa59');

  static Color blueGray400 = fromHex('#888888');

  static Color gray800 = fromHex('#504e4e');

  static Color blueGray500 = fromHex('#489582');

  static Color gray900 = fromHex('#222121');

  static Color gray90001 = fromHex('#171717');

  static Color orange300 = fromHex('#fabd62');

  static Color blue50 = fromHex('#eff1ff');

  static Color gray100 = fromHex('#f1f2f6');

  static Color blue300 = fromHex('#5ab3d6');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray90090 = fromHex('#90171717');

  static Color indigo600 = fromHex('#3b5998');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

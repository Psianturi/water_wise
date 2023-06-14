import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7005e = fromHex('#5effffff');

  static Color blueGray10001 = fromHex('#c5d9d6');

  static Color blueGray10002 = fromHex('#d9d9d9');

  static Color red500 = fromHex('#fb4141');

  static Color red400 = fromHex('#ce643a');

  static Color black9003f = fromHex('#3f000000');

  static Color gray50 = fromHex('#f6f9ff');

  static Color blueGray50001 = fromHex('#667084');

  static Color black900 = fromHex('#000000');

  static Color redA400 = fromHex('#ff1c1c');

  static Color lightBlueA700 = fromHex('#0275ff');

  static Color blueGray700 = fromHex('#4a6964');

  static Color blueGray90001 = fromHex('#312c33');

  static Color deepPurpleA200 = fromHex('#6e5de7');

  static Color blueGray900 = fromHex('#283b38');

  static Color gray600 = fromHex('#a57e6f');

  static Color gray400 = fromHex('#bfbfbf');

  static Color blueGray100 = fromHex('#c4d8d5');

  static Color gray500 = fromHex('#a6a6a6');

  static Color blueGray400 = fromHex('#6f9c95');

  static Color gray800 = fromHex('#404040');

  static Color blueGray500 = fromHex('#668e87');

  static Color orange500 = fromHex('#ff9800');

  static Color blueGray4003d = fromHex('#3d6f9c95');

  static Color gray300 = fromHex('#dde5e9');

  static Color indigo100 = fromHex('#c7c9d9');

  static Color black90019 = fromHex('#19000000');

  static Color blueGray40002 = fromHex('#888888');

  static Color blueGray40001 = fromHex('#6a968f');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo800 = fromHex('#274591');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

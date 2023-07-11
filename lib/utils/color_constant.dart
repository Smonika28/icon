import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray700 = fromHex('#616161');

  static Color orangeA200 = fromHex('#d5a353');

  static Color gray500 = fromHex('#9c9c9c');

  static Color blueGray400 = fromHex('#888888');

  static Color gray800 = fromHex('#3c3c3c');

  static Color redA200 = fromHex('#ff4545');

  static Color gray900 = fromHex('#1e1e1e');

  static Color amber100 = fromHex('#ffe7c1');

  static Color red500 = fromHex('#fb2f2f');

  static Color gray9006c = fromHex('#6c1e1e1e');

  static Color lightBlue400 = fromHex('#20afff');

  static Color gray200 = fromHex('#efefef');

  static Color black9003f = fromHex('#3f000000');

  static Color amberA400 = fromHex('#f7c100');

  static Color black90001 = fromHex('#080706');

  static Color greenA700 = fromHex('#00bf13');

  static Color black900 = fromHex('#000000');

  static Color gray50001 = fromHex('#a8a8a8');

  static Color gray20087 = fromHex('#87efefef');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

import 'dart:ui';

import 'package:flutter/cupertino.dart';

class TrianglePath extends CustomClipper<Rect>{


  @override
  Rect getClip(Size size) {
    Rect rect = Rect.fromLTWH(10.0, 15.0, 40.0, 30.0);

    return rect;
  }


  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
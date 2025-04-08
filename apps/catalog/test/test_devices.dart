import 'package:flutter/material.dart';

abstract class TestDevices {
  const TestDevices();

  int get width;
  int get height;
  int get pixelRatio;

  BoxConstraints get constraints => BoxConstraints(
        minWidth: width / pixelRatio,
        maxWidth: width / pixelRatio,
        minHeight: height / pixelRatio,
        maxHeight: height / pixelRatio,
      );
}

class IPhone16ProMax extends TestDevices {
  const IPhone16ProMax();

  @override
  int get width => 1320;

  @override
  int get height => 2868;

  @override
  int get pixelRatio => 3;
}

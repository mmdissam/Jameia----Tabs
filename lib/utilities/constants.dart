import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

const kBackgroundColor = Color(0xFFF0F2F6);
const kPrimaryColor = Color(0xFF6F5BD4);
const kTextColor = Color(0xFFFFFFFF);
const kBackgroundContainer = Color(0xFFFFFFFF);
const kBackgroundIcons = Color(0xFFFFC7C7);
const kDefaultPadding = 20.0;
const kGradient = LinearGradient(
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
  colors: [
    Color(0xFF6357CC),
    Color(0xFF8F67E8),
  ],
);
const kGradientUnSelectedTabBar = LinearGradient(
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
  colors: [
    Color(0xFF6357CC),
    Color(0xFF6F4EBB),
  ],
);
const kGradientSelectedTabBar = LinearGradient(
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
  colors: [
    Color(0xFF6357CC),
    Color(0xFFD1D1D1),
  ],
);

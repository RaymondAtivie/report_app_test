import 'package:flutter/material.dart';

// const kBrandBlue = Color(0xFF115A9C);

const MaterialColor brandblue =
    MaterialColor(_brandbluePrimaryValue, <int, Color>{
  50: Color(0xFFE2EBF3),
  100: Color(0xFFB8CEE1),
  200: Color(0xFF88ADCE),
  300: Color(0xFF588CBA),
  400: Color(0xFF3573AB),
  500: Color(_brandbluePrimaryValue),
  600: Color(0xFF0F5294),
  700: Color(0xFF0C488A),
  800: Color(0xFF0A3F80),
  900: Color(0xFF052E6E),
});
const int _brandbluePrimaryValue = 0xFF115A9C;

const MaterialColor brandblueAccent =
    MaterialColor(_brandblueAccentValue, <int, Color>{
  100: Color(0xFF9EBDFF),
  200: Color(_brandblueAccentValue),
  400: Color(0xFF3877FF),
  700: Color(0xFF1F66FF),
});
const int _brandblueAccentValue = 0xFF6B9AFF;

ThemeData themeData(BuildContext context) => ThemeData(
      primarySwatch: brandblue,
      scaffoldBackgroundColor: const Color(0xFFF8F6F6),
    );

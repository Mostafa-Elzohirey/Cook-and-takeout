import 'package:flutter/material.dart';

const MaterialColor azureBlue = MaterialColor(_azureBluePrimaryValue, <int, Color>{
  50: Color(0xFFE0F0FF),
  100: Color(0xFFB3D9FF),
  200: Color(0xFF80BFFF),
  300: Color(0xFF4DA5FF),
  400: Color(0xFF2692FF),
  500: Color(_azureBluePrimaryValue),
  600: Color(0xFF0077FF),
  700: Color(0xFF006CFF),
  800: Color(0xFF0062FF),
  900: Color(0xFF004FFF),
});
const int _azureBluePrimaryValue = 0xFF007FFF;

const MaterialColor azureBlueAccent = MaterialColor(_azureBlueAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_azureBlueAccentValue),
  400: Color(0xFFBFCFFF),
  700: Color(0xFFA6BCFF),
});
const int _azureBlueAccentValue = 0xFFF2F5FF;


const MaterialColor lightRed = MaterialColor(_lightRedPrimaryValue, <int, Color>{
  50: Color(0xFFFFF0F0),
  100: Color(0xFFFFD9D9),
  200: Color(0xFFFFBFBF),
  300: Color(0xFFFFA5A5),
  400: Color(0xFFFF9292),
  500: Color(_lightRedPrimaryValue),
  600: Color(0xFFFF7777),
  700: Color(0xFFFF6C6C),
  800: Color(0xFFFF6262),
  900: Color(0xFFFF4F4F),
});
const int _lightRedPrimaryValue = 0xFFFF7F7F;

const MaterialColor lightRedAccent = MaterialColor(_lightRedAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_lightRedAccentValue),
  400: Color(0xFFFFF5F5),
  700: Color(0xFFFFDBDB),
});
const int _lightRedAccentValue = 0xFFFFFFFF;


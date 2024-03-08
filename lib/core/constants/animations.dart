import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AppAnimations {
  static const String path = "assets/animations/";
  static LottieBuilder language = LottieBuilder.asset(
    "$path" "language.json",
    fit: BoxFit.fill,
  );
  static LottieBuilder question = LottieBuilder.asset(
    "$path" "question.json",
    fit: BoxFit.fill,
  );
  static LottieBuilder lightMode = LottieBuilder.asset(
    "$path" "lightmode.json",
    fit: BoxFit.fill,
  );
  static LottieBuilder darkMode = LottieBuilder.asset(
    "$path" "darkmode.json",
    fit: BoxFit.fill,
  );
  static LottieBuilder noLocation = LottieBuilder.asset(
    "$path" "nolocation.json",
    //fit: BoxFit.fill,
  );
  static LottieBuilder deleting = LottieBuilder.asset(
    width: 100,
    height: 100,
    repeat: false,
    "$path" "deleting.json",
    fit: BoxFit.fill,
  );
}

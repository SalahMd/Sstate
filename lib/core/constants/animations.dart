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
  static LottieBuilder deleting = LottieBuilder.asset(
    "$path" "deleting.json",
    fit: BoxFit.fill,
  );
}

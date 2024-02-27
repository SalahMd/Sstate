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
}

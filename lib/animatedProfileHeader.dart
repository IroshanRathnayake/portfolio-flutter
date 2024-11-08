import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:portfolio_app/header.dart';

Widget animatedProfileHeader(BuildContext context) {
  return header(context).animate().scale(
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOut,
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_project_lesson_26/theme/colors.dart';

abstract class TextStyles {
  static TextStyle roboto20w700 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static TextStyle roboto15w700 = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );
  static TextStyle roboto10w400 = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.blackColor,
  );
  static TextStyle roboto18w700 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );
  static TextStyle roboto13w700 = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );
}

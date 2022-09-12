import 'package:flutter/material.dart';
import 'package:flutter_project_lesson_26/screens/stack/models/categories_model.dart';
import 'package:flutter_project_lesson_26/theme/colors.dart';
import 'package:flutter_project_lesson_26/theme/text_style.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    Key? key,
    required this.model,
  }) : super(key: key);

  //
  final CategoryModel model;

  //
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.colorF90640, AppColors.color8F00FF],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.colorFFFFFF,
        ),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Image.asset(
              model.image,
              height: 36,
              width: 84,
            ),
            const SizedBox(height: 19),
            Text(model.title, style: TextStyles.muller13w700),
            const SizedBox(height: 2.42),
            Text(
              model.subtitle,
              style: TextStyles.muller10w400.copyWith(
                color: AppColors.colorBDBDBD,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

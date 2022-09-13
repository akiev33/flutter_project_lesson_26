import 'package:flutter/material.dart';
import 'package:flutter_project_lesson_26/resources/images/resources.dart';
import 'package:flutter_project_lesson_26/screens/stack/models/categories_model.dart';
import 'package:flutter_project_lesson_26/screens/stack/widgets/categories.dart';
import 'package:flutter_project_lesson_26/theme/colors.dart';
import 'package:flutter_project_lesson_26/theme/text_style.dart';
import 'package:flutter_svg/svg.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color9F8A8A,
      body: Stack(
        children: [
          Image.asset(Images.shapeElement),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 52),
                Text('Главная', style: TextStyles.muller20w700),
                const SizedBox(height: 20),
                //
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.only(
                    left: 27,
                    bottom: 21,
                    right: 20,
                    top: 18,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.colorFFFFFF,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset.zero,
                        blurRadius: 14,
                        color: AppColors.color45006F.withOpacity(0.35),
                      ),
                    ],
                  ),
                  //
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 12,
                        ),
                        decoration: const BoxDecoration(
                          color: AppColors.colorFFD541,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(AppSvgs.thunderbolt),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Начните зарабатывать!',
                            style: TextStyles.muller15w700,
                          ),
                          const SizedBox(height: 7),
                          Text(
                            'Приобретите тариф Behype-PRO \nи начните свою карьеру!',
                            style: TextStyles.muller10w400,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 44),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: AppColors.colorF9F8FF,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 19, vertical: 44),
                  // height: 614,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Категории',
                        style: TextStyles.muller18w700,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 127,
                        child: ListView.separated(
                          //
                          shrinkWrap: false,
                          //
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 8.5),
                          // physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: category.length,
                          itemBuilder: (context, index) => CategoriesItem(
                            model: category[index],
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Рекламные кампании',
                            style: TextStyles.muller18w700,
                          ),
                          // const SizedBox(width: 102),
                          // TextButton(
                          //   onPressed: () {},
                          //   child: Container(
                          //     height: 18,
                          //     width: 38,
                          //     decoration: BoxDecoration(
                          //       color: AppColors.colorF90640,
                          //       borderRadius: BorderRadius.circular(50),
                          //     ),
                          //     child: Center(
                          //       child: Text(
                          //         'Все',
                          //         style: TextStyles.muller12w500.copyWith(
                          //           color: AppColors.colorFFFFFF,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            height: 20,
                            width: 45,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.colorF90640,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              child: FittedBox(
                                  child: Text('Все',
                                      style: TextStyles.muller12w500)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 34),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.colorDED9FF.withOpacity(0.33),
                              blurRadius: 10,
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 124,
                              width: 170,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(8),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.color6322E0,
                                    AppColors.colorD96DFF,
                                  ],
                                ),
                              ),
                              child: Image.asset(
                                Images.pen,
                                height: 110,
                                width: 140,
                              ),
                            ),
                            Container(
                              height: 38,
                              width: 170,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(8),
                                ),
                                color: AppColors.colorF9F8FF,
                              ),
                              child: Center(
                                child: Text(
                                  'В новом обновлении',
                                  style: TextStyles.muller13w700,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

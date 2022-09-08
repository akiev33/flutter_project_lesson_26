import 'package:flutter/material.dart';
import 'package:flutter_project_lesson_26/resources/images/resources.dart';
import 'package:flutter_project_lesson_26/theme/colors.dart';
import 'package:flutter_project_lesson_26/theme/text_style.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: const StackScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.robotoFlexTextTheme(),
      ),
    );
  }
}

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color9F8A8A,
      body: Stack(
        children: [
          Image.asset(Images.shapeElement),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 52),
                Text('Главная', style: TextStyles.roboto20w700),
                const SizedBox(height: 22),
                Container(
                  height: 90,
                  width: 339,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.color45006F,
                        blurRadius: 14,
                        offset: Offset(
                          0, // Move to right 5  horizontally
                          0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            const CircleAvatar(
                              backgroundColor: AppColors.colorYellow,
                              radius: 20,
                            ),
                            SvgPicture.asset(AppSvgs.thunderbolt),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 17),
                          Text(
                            'Начните зарабатывать!',
                            style: TextStyles.roboto15w700,
                          ),
                          const SizedBox(height: 7),
                          Text(
                            'Приобретите тариф Behype-PRO\nи начните свою карьеру!',
                            style: TextStyles.roboto10w400,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 44),
                Container(
                  height: 613,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColors.color9F8FF,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(19),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 25),
                        Container(
                          child: Text(
                            'Категории',
                            style: TextStyles.roboto18w700,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: const LinearGradient(colors: [
                                    Color(0xffF90640),
                                    Color(0xff8F00FF)
                                  ])),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  height: 125,
                                  width: 107,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: const LinearGradient(colors: [
                                    Color(0xffF90640),
                                    Color(0xff8F00FF)
                                  ])),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  height: 125,
                                  width: 107,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: const LinearGradient(colors: [
                                    Color(0xffF90640),
                                    Color(0xff8F00FF)
                                  ])),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  height: 125,
                                  width: 107,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 49),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text('Рекламные кампании',
                                  style: TextStyles.roboto18w700),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 18,
                                width: 38,
                                child: Center(
                                  child: Text(
                                    'Все',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffF90640),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 34),
                        Column(
                          children: [
                            Container(
                              height: 124,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                gradient: const LinearGradient(colors: [
                                  Color(0xffD96DFF),
                                  Color(0xff6322E0),
                                ]),
                                boxShadow: [
                                  BoxShadow(blurRadius: 1.0),
                                ],
                              ),
                            ),
                            Container(
                              height: 38,
                              width: 170,
                              child: Center(
                                  child: Text(
                                'В новом обновлении',
                                style: TextStyles.roboto13w700,
                              )),
                              decoration: BoxDecoration(
                                color: Color(0xffF9F8FF),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1.0, color: Colors.grey),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_project_lesson_26/resources/images/resources.dart';

class CategoryModel {
  final String image;
  final String title;
  final String subtitle;

  CategoryModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<CategoryModel> category = [
  CategoryModel(
    image: Images.categories1,
    title: 'Реклама',
    subtitle: '106 кампаний',
  ),
  CategoryModel(
    image: Images.categories2,
    title: 'Взаимопиар',
    subtitle: '56 заявок',
  ),
  CategoryModel(
    image: Images.categories3,
    title: 'Бартер',
    subtitle: '245 заявок',
  ),
];

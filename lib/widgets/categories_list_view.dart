import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_caed.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
      imageUrl: 'assets/images/pexels-vicente-vidal-1397490-2697050.jpg',
      categoryName: 'business',
    ),
    CategoryModel(
        imageUrl: 'assets/images/sports.avif', categoryName: 'sports'),
    CategoryModel(
      imageUrl: 'assets/images/technology.jpeg',
      categoryName: 'technology',
    ),
    CategoryModel(
      imageUrl: 'assets/images/entertaiment.avif',
      categoryName: 'entertainment',
    ),
    CategoryModel(
      imageUrl: 'assets/images/general.avif',
      categoryName: 'travel',
    ),
    CategoryModel(
      imageUrl: 'assets/images/health.avif',
      categoryName: 'health',
    ),
    CategoryModel(
      imageUrl: 'assets/images/science.avif',
      categoryName: 'science',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          padding: const EdgeInsets.only(bottom: 20),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          }),
    );
  }
}

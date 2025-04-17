import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}

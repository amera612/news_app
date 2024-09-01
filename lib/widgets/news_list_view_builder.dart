import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/error.dart';
import 'package:news_app/widgets/loading.dart';
import 'package:news_app/widgets/news_lest_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var futuree;
  @override
  void initState() {
    super.initState();
    futuree = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: futuree,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsLestView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Error(),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Loading(),
          );
        }
      },
    );
  }
}

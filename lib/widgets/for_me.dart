// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/news_lest_view.dart';

// class NewsListViewBuilder extends StatefulWidget {
//   const NewsListViewBuilder({
//     super.key,
//   });

//   @override
//   State<NewsListViewBuilder> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListViewBuilder> {
//   bool isLoading = true;
//   List<ArticleModel> articles = [];
//   @override
//   void initState() {
//     super.initState();
//     getNews();
//   }

//   Future<void> getNews() async {
//     articles = await NewsService(Dio()).getGeneralNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) => isLoading
//       ? SliverToBoxAdapter(
//           child: Container(
//             height: MediaQuery.of(context).size.height,
//             alignment: Alignment.center,
//             child: const CircularProgressIndicator(),
//           ),
//         )
//       : articles.isNotEmpty
//           ? NewsLestView(
//               articles: articles,
//             )
//           : Container(
//               height: MediaQuery.of(context).size.height,
//               alignment: Alignment.center,
//               child: const Text('🌚there is an error ,try again'),
//             );
// }

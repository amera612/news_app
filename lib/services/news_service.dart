import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://api.worldnewsapi.com/search-news?source-countries=us&categories=$category&api-key=5d37f64c2bd24ce6aa759d435b93bcce');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['news'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          imageUrl: article['image'],
          subTitle: article['summary'],
          title: article['title'],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}

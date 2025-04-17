import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://api.worldnewsapi.com/search-news?source-countries=us&categories=$category&api-key=5d37f64c2bd24ce6aa759d435b93bcce');
      //39701b1b45df4f8b90af795a221ff742  aas@gmail
      // 5d37f64c2bd24ce6aa759d435b93bcce  ameran@gmail
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['news'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}

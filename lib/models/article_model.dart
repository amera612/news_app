class ArticleModel {
  final String? imageUrl;
  final String title;
  final String? subTitle;
  ArticleModel(
      {required this.imageUrl, required this.subTitle, required this.title});

  @override
  String toString() {
    return 'ArticleModel{imageUrl: $imageUrl, title: $title, subTitle: $subTitle}';
  }

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      imageUrl: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}

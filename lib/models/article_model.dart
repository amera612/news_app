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
}

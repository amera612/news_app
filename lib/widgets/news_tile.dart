import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child:

              // CachedNetworkImage(
              //   height: 200,
              //   width: double.infinity,
              //   fit: BoxFit.cover,
              //   imageUrl: articleModel.imageUrl,
              //   placeholder: (context, articleModel.imageUrl) => loading(),
              //   errorWidget: (context, articleModel.imageUrl, error) => Icon(Icons.error),
              // ),
              Image.network(
            articleModel.imageUrl ??
                'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1mh0Cl.img?w=768&h=432&m=6',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? ' ',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}

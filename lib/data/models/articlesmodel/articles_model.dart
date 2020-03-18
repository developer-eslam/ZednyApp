

import 'package:zed/data/models/articlesmodel/result_article.dart';

class ArticleModel {
  List<ResultArticle> results;

  ArticleModel({
    this.results,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        results: List<ResultArticle>.from(
            json["results"].map((x) => ResultArticle.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

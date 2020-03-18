import 'article_object.dart';

class ResultArticle {
  Article article;
  List<Article> articles;

  ResultArticle({
    this.article,
    this.articles,
  });

  factory ResultArticle.fromJson(Map<String, dynamic> json) => ResultArticle(
        article: Article.fromJson(json["article"]),
        articles: List<Article>.from(
            json["articles"].map((x) => Article.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "article": article.toJson(),
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
      };
}

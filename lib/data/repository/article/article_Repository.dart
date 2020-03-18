


import 'package:zed/data/models/articlesmodel/article_object.dart';
import 'package:zed/data/models/articlesmodel/articles_model.dart';
import 'package:zed/data/models/articlesmodel/result_article.dart';
import 'package:zed/data/networking/apiprovider/api_provider.dart';

class ArticleRepository {

  ApiProvider apiProvider = ApiProvider();

  Future<List<ResultArticle>> fetchResultArticle(int articleId) async {
        final response = await apiProvider.getDataModel("show_articles/$articleId");
      return ArticleModel.fromJson(response).results;
  }

  Future<Article>  fetchOneArticle(int articleId) async {
    final response = await apiProvider.getDataModel("show_articles/$articleId");
    return ResultArticle.fromJson(response).article;
  }
  
  Future<List<Article>> fetchArticles(int articleId) async {
    final response = await apiProvider.getDataModel("show_articles/$articleId");
    return ResultArticle.fromJson(response).articles;
  }

  Future<ArticleModel> fetchArticleModel(int articleId) async {
    final response = await apiProvider.getDataModel("show_articles/$articleId");
    return ArticleModel.fromJson(response);
  }
  
}
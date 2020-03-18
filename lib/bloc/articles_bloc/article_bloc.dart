
import 'dart:async';

import 'package:zed/data/models/articlesmodel/article_object.dart';
import 'package:zed/data/models/articlesmodel/articles_model.dart';
import 'package:zed/data/networking/responseapi/response.dart';
import 'package:zed/data/repository/article/article_Repository.dart';


class ArticleBloc {

    ArticleRepository _articleRepository;
    StreamController _articlestreamController;

    StreamSink<Response<ArticleModel>> get resultArticleSink =>
     _articlestreamController.sink;
    // Stream<Response<ArticleModel>> get resultArticleStream =>
    //  _articlestreamController.stream;

    ArticleBloc(Article article) {
      _articlestreamController = StreamController<Response<ArticleModel>>();
      _articleRepository = ArticleRepository();
      fetchArticleBook(article.id);
    }

    fetchArticleBook(int articleId) async {
        resultArticleSink.add(Response.loading('Get Articles Book'),);
        try {
        ArticleModel resultArticle = await _articleRepository
        .fetchArticleModel(articleId);
          resultArticleSink.add(Response.completed(resultArticle),);
        } catch (error) {
          resultArticleSink.add(Response.error(error.toString(),),);
          print(error);
        }
    }

    dispose() {
      _articlestreamController.close();
    }
}
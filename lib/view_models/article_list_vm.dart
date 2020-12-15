import 'package:flutter/cupertino.dart';
import 'package:newsapi/models/article_model.dart';
import 'package:newsapi/models/articles_model.dart';
import 'package:newsapi/services/news_api.dart';

class ArticleListViewModel with ChangeNotifier {
  List<Article> _articleList = [];
  List<ArticlesList> _articleListByCategory = [];

  Future<void> fetchArticles() async {
    _articleList = await NewsApi().fetchArticles();
    notifyListeners();
  }

  Future<void> fetchArticlesByCategory(String category) async {
    _articleList = await NewsApi().fetchArticlesByCategory(category);
    notifyListeners();
  }

  List<Article> get articleList => _articleList;

  List<ArticlesList> get articleListByCategory => _articleListByCategory;
}

import 'package:flutter/material.dart';
import 'package:newsapi/services/news_api.dart';
import 'package:newsapi/view_models/article_list_vm.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () async {
            await NewsApi().fetchArticles();
          },
//            print(Provider.of<ArticleListViewModel>(context, listen: false)
//                .articleList);
        ),
      ),
    );
  }
}

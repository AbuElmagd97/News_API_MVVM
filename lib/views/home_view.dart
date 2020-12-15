import 'package:flutter/material.dart';
import 'package:newsapi/view_models/article_list_vm.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            await Provider.of<ArticleListViewModel>(context, listen: false)
                .fetchArticles();
            print(Provider.of<ArticleListViewModel>(context, listen: false)
                .articleList);
          },
        ),
      ),
    );
  }
}
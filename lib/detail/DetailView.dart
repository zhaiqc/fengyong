import 'article_list_entity.dart';

abstract class DetailView{
    void getArticleListSuccess(ArticleListEntity entity);
    void error(error);
}
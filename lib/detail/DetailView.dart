import 'article_list_entity.dart';
import 'creat_order_entity.dart';
abstract class DetailView{
    void getArticleListSuccess(ArticleListEntity entity);
    void getQrSuccess(String  QR);
    void createOrderSuccess( CreatOrderEntity entity );
    void error(error);
}
import 'package:ChamstersCharity/model/articleModel.dart';

List<ArticleModel> getArticle() {
  List<ArticleModel> article = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.title = "provide ScholarShip";
  articleModel.imageUrl = "assets/pic8.jpg";
  articleModel.description =
      "Education is the only thing that could help this children escape poverty we aim to provie Scholarship for children's that can't afford/ have proper education because of poverty amd inquality. Let us Provide them a proper education they need and prepare them for thier better future";
  article.add(articleModel);

  articleModel = new ArticleModel();
  articleModel.title = "School Supplies";
  articleModel.imageUrl = "assets/i12.jpg";
  articleModel.description =
      "School supplies get student drive off to get start in class. We need your help to raise fund to provide students material they need to get start in school. We would love to help distribute school supplies to all childrens that in need.";
  article.add(articleModel);

  articleModel = new ArticleModel();
  articleModel.title = "Make a simple change";
  articleModel.imageUrl = "assets/pic7.jpg";
  articleModel.description =
      "Effective interventions can break the cycle of poverty for the world’s neediest people. Preventing and fighting diseases can keep children healthy and in school. One act of kindness can change someones life";
  article.add(articleModel);

  articleModel = new ArticleModel();
  articleModel.title =
      "Help children in need, give them proper and right education ";
  articleModel.imageUrl = "assets/pic8.jpg";
  articleModel.description =
      "Millions of children dont have proper education because of poverty, and inquality. Poor students not only receive the worst education, but they fall victim to lifestyle and health issues that hinder their ability to learn. Education is the only thing that will help this children escape poverty.";
  article.add(articleModel);

  return article;
}

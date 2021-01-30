import 'package:ChamstersCharity/model/articleModel.dart';

List<CarouselNewsModel> getCarouseL() {
  List<CarouselNewsModel> carouselModel = new List<CarouselNewsModel>();
  CarouselNewsModel carouseltitle = new CarouselNewsModel();

  carouseltitle.title = "Scholarship";
  carouseltitle.header = "Scholarship for Student";
  carouseltitle.imgUrl = "assets/i9.jpg";
  carouseltitle.descrip =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.";
  carouselModel.add(carouseltitle);

  carouseltitle = new CarouselNewsModel();
  carouseltitle.title = "Scholarship";
  carouseltitle.header = "Scholarship for Student";
  carouseltitle.imgUrl = "assets/i9.jpg";
  carouseltitle.descrip =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.";
  carouselModel.add(carouseltitle);

  carouseltitle = new CarouselNewsModel();
  carouseltitle.title = "Scholarship";
  carouseltitle.header = "Scholarship for Student";
  carouseltitle.imgUrl = "assets/i9.jpg";
  carouseltitle.descrip =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.";
  carouselModel.add(carouseltitle);

  return carouselModel;
}

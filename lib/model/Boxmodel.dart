import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'articleModel.dart';

List<BoxMOdel> getBoxmodel() {
  List<BoxMOdel> articleBox = new List<BoxMOdel>();
  BoxMOdel boxmodel = new BoxMOdel();

  boxmodel.title = "donation";
  boxmodel.price = "4 campaign";
  boxmodel.icon = Icon(FontAwesomeIcons.boxOpen);
  articleBox.add(boxmodel);

  boxmodel.title = "raised";
  boxmodel.price = "5230";
  boxmodel.icon = Icon(FontAwesomeIcons.boxOpen);
  articleBox.add(boxmodel);
  return articleBox;
}

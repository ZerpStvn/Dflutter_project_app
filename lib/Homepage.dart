import 'package:ChamstersCharity/model/DataList.dart';
import 'package:ChamstersCharity/model/articleModel.dart';
import 'package:ChamstersCharity/screens/ItemNews.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ArticleModel> articles = new List<ArticleModel>();
  @override
  void initState() {
    super.initState();
    articles = getArticle();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            height: 330,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 1.0)
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              child: Image(
                image: AssetImage('assets/i1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      // BoxPage(),
      Container(
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: articles.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return BlogTile(
                imageUrl: articles[index].imageUrl,
                title: articles[index].title,
                desc: articles[index].description,
              );
            }),
      )
    ])));
  }
}

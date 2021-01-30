import 'package:ChamstersCharity/model/listViewBox.dart';
import 'package:flutter/material.dart';

class BlogTile extends StatelessWidget {
  final String imageUrl, title, desc;
  BlogTile({this.imageUrl, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            margin: EdgeInsets.fromLTRB(40.0, 1.0, 20.0, 5.0),
            height: 295.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(150.0, 20.0, 20.0, 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 150,
                        child: Text(
                          title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          child: Text(
                            desc,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 25),
                    child: Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            _bottomSheet(context);
                          },
                          color: Colors.deepOrange,
                          child: Text('Donate'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
        Positioned(
          left: 15.0,
          top: 15.0,
          bottom: 15.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              width: 160.0,
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}

_bottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext c) {
        return Modalview();
      });
}

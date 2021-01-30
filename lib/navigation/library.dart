import 'package:ChamstersCharity/model/articleModel.dart';
import 'package:ChamstersCharity/model/carouselNews.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  List<CarouselNewsModel> carouselModel = new List<CarouselNewsModel>();
  @override
  void initState() {
    super.initState();
    carouselModel = getCarouseL();
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 340, left: 5),
      child: Column(
        children: <Widget>[
          // Text("Description",
          //     style: TextStyle(
          //       color: Colors.black,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 22,
          //       letterSpacing: 1.5,
          //     )),
          Container(
            height: 300,
            // color: Colors.lightBlueAccent,
            child: ListView.builder(
                itemCount: carouselModel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(5.0),
                    width: 210,
                    // color: Colors.red,
                    // decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(10)),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Positioned(
                          bottom: 45.0,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0),
                                      blurRadius: 5)
                                ]),
                            height: 70,
                            width: 200,
                            // color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Text(
                                  //   '${carouselModel[index].title}',
                                  //   style: TextStyle(
                                  //       fontSize: 15.0,
                                  //       fontWeight: FontWeight.w600),
                                  // ),
                                  // Column(
                                  // children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: RaisedButton(
                                      onPressed: () {},
                                      color: Colors.deepOrange,
                                      child: Text("Donate"),
                                    ),
                                  ),

                                  //   ],
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // height: 185,
                          // width: 205,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 0.2),
                                    blurRadius: 6.0)
                              ]),
                          child: Stack(
                            children: <Widget>[
                              Image(
                                height: 180,
                                width: 200.0,
                                image: AssetImage(carouselModel[index].imgUrl),
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

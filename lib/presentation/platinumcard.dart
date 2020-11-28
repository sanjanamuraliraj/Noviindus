import 'package:flutter/material.dart';
import 'package:noviindus/mocks/goldlist.dart';
import 'package:noviindus/mocks/platinumlist.dart';

class PlatinumCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              
            ],
          ),
        ),
        Container(
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: platinumList.length,
            itemBuilder: (BuildContext context, int index) {
              PlatinumList destination = platinumList[index];
                return Container(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                            ),
                          ],
                        ),
                        child: Container(
                          height: 300.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Stack(
                                children: <Widget>[
                                  Hero(
                                    tag: destination.image,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                          height: 300.0,
                                          width: 180.0,
                                          image: AssetImage(destination.image),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  Positioned(
                                    left: 10.0,
                                    bottom: 10.0,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          destination.title,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            SizedBox(width: 5.0),
                                            Text(
                                              destination.description,
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
            },
          ),
        ),
      ],
    );
  }
}
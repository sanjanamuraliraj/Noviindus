import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:noviindus/presentation/goldcard.dart';
import 'package:noviindus/presentation/platinumcard.dart';
import 'package:noviindus/presentation/silvercard.dart';

import 'diamondcard.dart';

class HomePage extends StatelessWidget {
  GlobalKey _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'logo',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_basket_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultTabController(
                  length: 4,
                  child: Expanded(
                    child: Column(
                      children: [
                        TabBar(
                          indicatorColor: Color(0xFFFE8C68),
                          unselectedLabelColor: Color(0xFF555555),
                          labelColor: Color(0xFFFE8C68),
                          labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                          tabs: [
                            Tab(
                              text: "Gold",
                            ),
                            Tab(
                              text: "Diamond",
                            ),
                            Tab(
                              text: "platinum",
                            ),
                            Tab(
                              text: "silver",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 300.0,
                          child: TabBarView(
                            children: [
                              CategoryCard(),
                              DiamondCard(),
                              PlatinumCard(),
                              SilverCard(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orange[100],
                            ),
                            child: Image.asset(
                              'assets/ring.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Text('ring'),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orange[100],
                            ),
                            child: Image.asset(
                              'assets/bangle.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Text('Bangle'),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orange[100],
                            ),
                            child: Image.asset(
                              'assets/chain.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Text('chain'),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orange[100],
                            ),
                            child: Image.asset(
                              'assets/necklace.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Text('Necklace'),
                        ],
                      )
                    ],
                  ),
                ),
              ])),
      bottomNavigationBar: CurvedNavigationBar(
        key: _globalKey,
        buttonBackgroundColor: Colors.green,
        color: Colors.white,
        backgroundColor: Colors.grey[100],
        items: <Widget>[
          Icon(Icons.home, color: Colors.grey[600]),
          Icon(Icons.favorite, color: Colors.grey[600]),
          Icon(Icons.search, color: Colors.grey[600]),
          Icon(Icons.circle, color: Colors.grey[600]),
          Icon(Icons.person, color: Colors.grey[600]),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}

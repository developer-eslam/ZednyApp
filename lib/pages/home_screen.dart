import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZednyBooks',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  // HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  double _rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(),
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                actions: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 5.0),
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: 40,
                    height: 5,
                    child: FlatButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(2.0),
                        side: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      color: Colors.transparent,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(2.0),
                      onPressed: () {},
                      child: Text(
                        "AR".toUpperCase(),
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ],
                title: Container(
                  width: 370,
                  height: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/Zedny_logos-01.png',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                leading: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    // Do something
                    _scaffoldKey.currentState.openDrawer();
                  },
                ),
                expandedHeight: 440.0,
                floating: true,
                pinned: true,
                snap: true,
                elevation: 50,
                backgroundColor: Colors.black,
                flexibleSpace: Stack(
                  children: <Widget>[
                    FlexibleSpaceBar(
                      centerTitle: true,
                      background: Image.network(
                        'https://ploum.net/images/livres.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Positioned(
                    //   height: 140.0,
                    //   top: 80,
                    //   left: 20,
                    //   right: 20,
                    Positioned(
                      top: 100,
                      left: 50,
                      right: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            elevation: 5,
                            child: Container(
                              width: 280,
                              height: 210,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4.0),
                                child: Image.network(
                                  'https://ploum.net/images/livres.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Book Of The Day',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'In Preise of Slowness - Part 2 \n By Carl Honore,',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // RatingBar(
                          //   onRatingChanged: (rating) =>
                          //       setState(() => _rating = rating),
                          //   filledIcon: Icons.star,
                          //   emptyIcon: Icons.star_border,
                          //   halfFilledIcon: Icons.star_half,
                          //   isHalfAllowed: true,
                          //   filledColor: Colors.green,
                          //   emptyColor: Colors.redAccent,
                          //   halfFilledColor: Colors.amberAccent,
                          //   size: 30,
                          // ),

                          RatingBar.readOnly(
                            filledColor: Colors.grey,
                            initialRating: 5,
                            isHalfAllowed: true,
                            halfFilledIcon: Icons.star_half,
                            filledIcon: Icons.star,
                            emptyIcon: Icons.star_border,
                            size: 30,
                          ),
                          SizedBox(height: 2),
                          Container(
                            width: 270,
                            height: 48,
                            child: Card(
                              child: RaisedButton(
                                onPressed: () {},
                                child: Text(
                                  'PLAY',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    backgroundColor:
                                        Color.fromRGBO(227, 230, 234, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ),
                  ],
                ),
              ),
              new SliverList(
                // in this will be add list of books
                delegate: new SliverChildListDelegate(
                  _buildList(40),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List _buildList(int count) {
    List<Widget> listItems = List();

    for (int i = 0; i < count; i++) {
      listItems.add(new Padding(
          padding: new EdgeInsets.all(20.0),
          child: new Text('Item ${i.toString()}',
              style: new TextStyle(fontSize: 25.0))));
    }

    return listItems;
  }
}

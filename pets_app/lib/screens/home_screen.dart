import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class HomeScreenPage extends StatefulWidget {
  HomeScreenPage({Key key}) : super(key: key);

  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffEFF5F4),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: SizeConfig.blockSizeVertical * 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 4),
              child: Text(
                'Hi, Ferran',
                style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 4),
              child: Text(
                'Check out the new products groups',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 4),
              child: Container(
                height: SizeConfig.blockSizeVertical * 15,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Container(
                      height: SizeConfig.blockSizeVertical * 10,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), color: Color(0xff00B7B7)),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: SizeConfig.blockSizeHorizontal * 25,
                            color: Colors.transparent,
                          ),
                          Expanded(
                            child: Text(
                              "Lola is lost in your neigbourhood! Help us find her",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/dog.png",
                      height: SizeConfig.blockSizeVertical * 25,
                      width: SizeConfig.blockSizeHorizontal * 25,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 4,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "WALK GROUPS",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 4),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: SizeConfig.blockSizeVertical * 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/groupImage2.png",
                                  height: SizeConfig.blockSizeVertical * 12,
                                  width: SizeConfig.blockSizeHorizontal * 50,
                                  fit: BoxFit.fill,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        height: SizeConfig.blockSizeVertical * 8,
                                        child: Center(
                                          child: Text(
                                            "Meet our lovely dogs",
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.location_on,
                                                  size: 18,
                                                ),
                                                Text("  Valencia japan"),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.group,
                                                  size: 18,
                                                ),
                                                Text("  8 members"),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.person,
                                                  size: 18,
                                                ),
                                                Text("  organized by"),
                                                Text(
                                                  "  Laura",
                                                  style: TextStyle(color: Color(0xff00B7B7), fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: SizeConfig.blockSizeVertical * 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/groupImage1.png",
                                  height: SizeConfig.blockSizeVertical * 12,
                                  width: SizeConfig.blockSizeHorizontal * 50,
                                  fit: BoxFit.fill,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        height: SizeConfig.blockSizeVertical * 8,
                                        child: Center(
                                          child: Text(
                                            "Meet our lovely dogs",
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.location_on,
                                                  size: 18,
                                                ),
                                                Text("  Valencia japan"),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.group,
                                                  size: 18,
                                                ),
                                                Text("  8 members"),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.person,
                                                  size: 18,
                                                ),
                                                Text("  organized by"),
                                                Text(
                                                  "  Laura",
                                                  style: TextStyle(color: Color(0xff00B7B7), fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 4,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "NEW PRODUCTS",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 4),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: SizeConfig.blockSizeVertical * 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/groupImage1.png",
                                  height: SizeConfig.blockSizeVertical * 12,
                                  width: SizeConfig.blockSizeHorizontal * 50,
                                  fit: BoxFit.fill,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        height: SizeConfig.blockSizeVertical * 8,
                                        child: Center(
                                          child: Text(
                                            "Meet our lovely dogs",
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.location_on,
                                                  size: 18,
                                                ),
                                                Text("  Valencia japan"),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.group,
                                                  size: 18,
                                                ),
                                                Text("  8 members"),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.person,
                                                  size: 18,
                                                ),
                                                Text("  organized by"),
                                                Text(
                                                  "  Laura",
                                                  style: TextStyle(color: Color(0xff00B7B7), fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: SizeConfig.blockSizeVertical * 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/groupImage2.png",
                                  height: SizeConfig.blockSizeVertical * 12,
                                  width: SizeConfig.blockSizeHorizontal * 50,
                                  fit: BoxFit.fill,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        height: SizeConfig.blockSizeVertical * 8,
                                        child: Center(
                                          child: Text(
                                            "Meet our lovely dogs",
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.location_on,
                                                  size: 18,
                                                ),
                                                Text("  Valencia japan"),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.group,
                                                  size: 18,
                                                ),
                                                Text("  8 members"),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.person,
                                                  size: 18,
                                                ),
                                                Text("  organized by"),
                                                Text(
                                                  "  Laura",
                                                  style: TextStyle(color: Color(0xff00B7B7), fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

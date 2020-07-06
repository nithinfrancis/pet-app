import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class PetScreenPage extends StatefulWidget {
  PetScreenPage({Key key}) : super(key: key);

  @override
  _PetScreenPageState createState() => _PetScreenPageState();
}

class _PetScreenPageState extends State<PetScreenPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffEFF5F4),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: SizeConfig.blockSizeVertical * 10,
              ),
              Text(
                'Find anything',
                style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'you need for your pets',
                style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  tile(tileColor: Color(0xff15464E), text: "vet", imageUrl: "assets/images/vet.png"),
                  tile(tileColor: Color(0xffC9E193), text: "Places to eat", imageUrl: "assets/images/placetoeat.png"),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  tile(tileColor: Color(0xff00B7B7), text: "Places to walk", imageUrl: "assets/images/dog.png"),
                  tile(tileColor: Color(0xffB6DDDF), text: "Spas & Saloons", imageUrl: "assets/images/spa.png"),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  tile(tileColor: Color(0xffC9E193), text: "Shops &", imageUrl: "assets/images/shops.png"),
                  tile(tileColor: Color(0xff15464E), text: "Walk", imageUrl: "assets/images/walk.png"),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  tile(tileColor: Color(0xffB6DDDF), text: "Animals in Adoption ", imageUrl: "assets/images/adoption.png"),
                  tile(tileColor: Color(0xff00B7B7), text: "Dogs", imageUrl: "assets/images/dogs.png"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget tile({Color tileColor, String imageUrl, String text}) {
  return Container(
    width: SizeConfig.screenWidth / 2.5,
    height: SizeConfig.blockSizeVertical * 16,
    child: Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        Container(
          height: SizeConfig.blockSizeVertical * 10,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), color: tileColor),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: TextStyle(color: (tileColor == Color(0xffB6DDDF) || tileColor == Color(0xffC9E193)) ? Colors.black : Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: SizeConfig.blockSizeHorizontal * 22,
                color: Colors.transparent,
              ),
            ],
          ),
        ),
        Image.asset(
          imageUrl,
          height: SizeConfig.blockSizeVertical * 16,
          width: SizeConfig.blockSizeHorizontal * 26,
        ),
      ],
    ),
  );
}

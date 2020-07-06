import 'package:flutter/material.dart';

class UnderDevelopmentPage extends StatefulWidget {
  UnderDevelopmentPage({Key key}) : super(key: key);
  @override
  _UnderDevelopmentPageState createState() => _UnderDevelopmentPageState();
}

class _UnderDevelopmentPageState extends State<UnderDevelopmentPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'under develpoment',
            ),
          ],
        ),
      ),
    );
  }
}

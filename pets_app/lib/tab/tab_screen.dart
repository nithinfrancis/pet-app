
import 'package:flutter/material.dart';
import 'package:petsapp/screens/home_screen.dart';
import 'package:petsapp/screens/pet_screen.dart';
import 'package:petsapp/under_development.dart';



class TabContainerDefault extends StatefulWidget {
  static const routeName = '/TabContainer';
  TabContainerDefault({Key key}) : super(key: key);

  @override
  _TabContainerDefaultState createState() => _TabContainerDefaultState();
}

class _TabContainerDefaultState extends State<TabContainerDefault> {
  List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      HomeScreenPage(),
      PetScreenPage(),
      UnderDevelopmentPage(),
      UnderDevelopmentPage(),
      UnderDevelopmentPage(),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
          body:
          TabBarView(
            physics: NeverScrollableScrollPhysics(), children: listScreens,),
          bottomNavigationBar: SizedBox(
            height: 62,
            child: TabBar(
              indicatorWeight: 1,
              labelColor:Color(0xff00B7B7),
              indicatorColor: Color(0xff00B7B7),
              unselectedLabelColor: Colors.grey,
              labelPadding: EdgeInsets.only(top: 1,bottom:1),
              tabs: [
                Tab(
                  text: "Home",
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: "Activity",
                  icon: Icon(Icons.local_activity),
                ),
                Tab(
                  text: "Search",
                  icon: Icon(Icons.search),
                ),
                Tab(
                  text: "Notifications",
                  icon: Icon(Icons.notifications),
                ),
                Tab(
                  text: "Profile",
                  icon: Icon(Icons.person),
                ),
              ],
            ),
          ),
          backgroundColor:Colors.white
      ),
    );
  }
}

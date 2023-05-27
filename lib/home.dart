
import 'package:flutter/material.dart';
import 'package:uaut_news/academic.dart';
import 'package:uaut_news/all_news.dart';
import 'package:uaut_news/sports.dart';
import 'package:uaut_news/uautso.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentTab = 0;
  final List<Widget> screens=[
    AllNews(),
    Academic(),
    Sports(),
    UAUTSO(),
  ];

  final PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget currentScreen = AllNews();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageStorage(
        child: currentScreen,
        bucket: pageStorageBucket,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentScreen = AllNews();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.home_filled,
                        color: currentTab == 0 ? Colors.blue : Colors.white,
                      ),
                      Text("Home",
                        style: TextStyle(color: currentTab == 0 ? Colors.blue : Colors.white,),)
                    ],
                  ),
                ),

                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentScreen = Academic();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.book_online_outlined,
                        color: currentTab == 1 ? Colors.blue : Colors.white,

                      ),
                      Text("Academic",style: TextStyle(color: currentTab == 1 ? Colors.blue : Colors.white),)
                    ],
                  ),
                ),

                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentScreen = Sports();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.sports_basketball_rounded,
                        color: currentTab == 2 ? Colors.blue : Colors.white,

                      ),
                      Text("Sports",style: TextStyle(color: currentTab == 2 ? Colors.blue : Colors.white),)
                    ],
                  ),
                ),

                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentScreen = UAUTSO();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.leaderboard_rounded,
                        color: currentTab == 3 ? Colors.blue : Colors.white,
                      ),
                      Text("UAUTso",style: TextStyle(color: currentTab == 3 ? Colors.blue : Colors.white),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

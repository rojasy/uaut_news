import 'package:flutter/material.dart';
import 'package:uaut_news/sports.dart';

import 'academic.dart';
import 'home.dart';

class UAUTSO extends StatefulWidget {
  const UAUTSO({Key? key}) : super(key: key);

  @override
  State<UAUTSO> createState() => _UAUTSOState();
}

class _UAUTSOState extends State<UAUTSO> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("UAUTso",style: TextStyle(color: Colors.white)),centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,size: 30.0,)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Card(
                child: ListTile(
                  leading: Icon(Icons.leaderboard_rounded),

                  title: Text("Usafi wa beach",style: TextStyle(fontSize: 15)),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.leaderboard_rounded,
                              size: 15,
                            ),
                            Text("UAUTso"),
                          ],
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       Icons.share,
                      //       size: 20,
                      //     ))
                    ],
                  ),
                  trailing: Text("Now"),
                ),
              ),
              Card(
                child: ListTile(
                  leading:Icon(Icons.leaderboard_rounded),
                  title: Text("Hakutokua na chakula jumapili",style: TextStyle(fontSize: 15)),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.leaderboard_rounded,
                              size: 15,
                            ),
                            Text("UAUTso"),
                          ],
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       Icons.share,
                      //       size: 20,
                      //     ))
                    ],
                  ),
                  trailing: Text("Now"),
                ),
              ),
              Card(
                child: ListTile(
                  leading:Icon(Icons.leaderboard_rounded),
                  title: Text("Rais ana ziara ya kikazi Mwalimu nyerere",style: TextStyle(fontSize: 15)),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.leaderboard_rounded,
                              size: 15,
                            ),
                            Text("UAUTso"),
                          ],
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       Icons.share,
                      //       size: 20,
                      //     ))
                    ],
                  ),
                  trailing: Text("Now"),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

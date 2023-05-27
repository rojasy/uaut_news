import 'package:flutter/material.dart';
import 'package:uaut_news/uautso.dart';

import 'academic.dart';
import 'home.dart';

class Sports extends StatefulWidget {
  const Sports({Key? key}) : super(key: key);

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Sports",style: TextStyle(color: Colors.white)),centerTitle: true,
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
                  leading: Icon(Icons.sports_baseball),

                  title: Text("Match between UAUt vs TIA",style: TextStyle(fontSize: 15)),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.sports_baseball,
                              size: 15,
                            ),
                            Text("Sports"),
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
                  leading:Icon(Icons.sports_baseball),
                  title: Text("Match between Apple valley vs UAUT",style: TextStyle(fontSize: 15)),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.sports_baseball,
                              size: 15,
                            ),
                            Text("Sports"),
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

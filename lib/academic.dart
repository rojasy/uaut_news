
import 'package:flutter/material.dart';
import 'package:uaut_news/sports.dart';
import 'package:uaut_news/uautso.dart';

import 'home.dart';

class Academic extends StatefulWidget {
  const Academic({Key? key}) : super(key: key);

  @override
  State<Academic> createState() => _AcademicState();
}

class _AcademicState extends State<Academic> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Academic",style: TextStyle(color: Colors.white),),centerTitle: true,
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
                  leading: Icon(Icons.book_online_rounded),

                  title: Text("Examination Results  semester 1 of 2023",style: TextStyle(fontSize: 15)),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.book_online_rounded,
                              size: 15,
                            ),
                            Text("Academic"),
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
                  leading:Icon(Icons.book_online_rounded),
                  title: Text("Examination Results  semester 2 of 2023",style: TextStyle(fontSize: 15)),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.book_online_rounded,
                              size: 15,
                            ),
                            Text("Academic"),
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
                  leading:Icon(Icons.book_online_rounded),
                  title: Text("Examination Results  semester 3 of 2023",style: TextStyle(fontSize: 15)),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.book_online_rounded,
                              size: 15,
                            ),
                            Text("Academic"),
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

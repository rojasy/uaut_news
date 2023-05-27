import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailsAllNews extends StatefulWidget {
  const DetailsAllNews( {Key? key, required this.documentSnapshot}) : super(key: key);
  final DocumentSnapshot documentSnapshot;
  // DocumentSnapshot documentSnapshot,
  @override
  State<DetailsAllNews> createState() => _DetailsAllNewsState();
}

class _DetailsAllNewsState extends State<DetailsAllNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0.0,actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.share))
      ],),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.documentSnapshot['title'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text(widget.documentSnapshot['description'],style: TextStyle(fontSize: 18,),overflow: TextOverflow.visible,),
          ],
        ),
      ),
    );
  }
}

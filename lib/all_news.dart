import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uaut_news/detailsAllNews.dart';

class AllNews extends StatefulWidget {
  const AllNews({Key? key}) : super(key: key);

  @override
  State<AllNews> createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {

  final CollectionReference _news = FirebaseFirestore.instance.collection("news");

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  Future<void> _update(DocumentSnapshot? documentSnapshot)async{
    if(documentSnapshot != null){
      titleController.text = documentSnapshot['title'];
      descriptionController.text = documentSnapshot['description'];
    }
    await showModalBottomSheet(
      isScrollControlled: true,
        context: context,
        builder: (BuildContext context){
          return Padding(
              padding: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: MediaQuery.of(context).viewInsets.bottom+20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    labelText: "title",
                  ),
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    labelText: "description",
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: () async{
                    final String title = titleController.text;
                    final String description = descriptionController.text;
                      await _news.doc(documentSnapshot?.id).update({'title': title, 'description': description});
                      titleController.text = '';
                      descriptionController.text = '';
                    Navigator.of(context).pop();
                }, child: Text("Update"))
              ],
            ),
          );
        }
    );
  }
  Future<void> _create()async{
    // if(documentSnapshot != null){
    //   titleController.text = documentSnapshot['title'];
    //   descriptionController.text = documentSnapshot['description'];
    // }
    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context){
          return Padding(
            padding: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: MediaQuery.of(context).viewInsets.bottom+20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    labelText: "title",
                  ),
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    labelText: "description",
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: () async{
                      final String title = titleController.text;
                      final String description = descriptionController.text;
                      await _news.add({'title': title, 'description': description});
                      titleController.text = '';
                      descriptionController.text = '';
                      Navigator.of(context).pop();
                    }, child: const Text("create"))
              ],
            ),
          );
        }
    );
  }
  Future<void> _delete(String newsID)async{
    await _news.doc(newsID).delete();

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Your data is deleted successfully"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("All news", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30.0,
                )),
            IconButton(
                onPressed: () {
                  _create();

                },
                icon: Icon(
                  Icons.add_circle_outline_sharp,
                  color: Colors.white,
                  size: 30.0,
                )),
          ],
        ),
        body: StreamBuilder(
          stream: _news.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot){
            if(streamSnapshot.hasData){
              return ListView.builder(
                itemCount: streamSnapshot.data?.docs.length,
                  itemBuilder: (context,index){
                    final DocumentSnapshot documentSnapshot = streamSnapshot.data!.docs[index];
                    return GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>DetailsAllNews(documentSnapshot: documentSnapshot,))
                        );
                      },
                      child: Card(
                        child: ListTile(
                          // Text("Status: ${list[i]['status']}"),
                          leading: Icon(Icons.leaderboard_rounded),
                          title: Text(documentSnapshot['title'],style: TextStyle(overflow: TextOverflow.ellipsis,),),
                          subtitle: Text(documentSnapshot['description'],style: TextStyle(letterSpacing: 0.4,overflow: TextOverflow.ellipsis,),),
                          trailing: SizedBox(
                            width: 100,
                            child: Row(
                              children: [
                                IconButton(onPressed: (){
                                  _update(documentSnapshot);

                                }, icon: Icon(Icons.edit,size: 20,)),
                                // SizedBox(width: 5,),
                                IconButton(onPressed: (){
                                  _delete(documentSnapshot.id);
                                }, icon: Icon(Icons.delete,color: Colors.red,size: 20,)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}

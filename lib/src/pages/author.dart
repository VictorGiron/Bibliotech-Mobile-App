import 'package:flutter/material.dart';
import 'package:bibliotech/src/pages/book_list.dart';


class AuthorDetail extends StatefulWidget {
  AuthorDetail({Key key}) : super(key: key);

  @override
  _AuthorDetailState createState() => _AuthorDetailState();
}

class _AuthorDetailState extends State<AuthorDetail> {
 @override
  Widget build(BuildContext context) {
    final Author author = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(186, 230, 227, 1.0),
        title: Text('Autor', textAlign: TextAlign.left, style: TextStyle(color: Colors.black),)
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: author.id,
                child: SafeArea(
                  child: Image(image: AssetImage(author.imageUrl,),
                    height: 300.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30.0,),
                width: double.infinity,
                child: Text(author.name, textAlign: TextAlign.center, textScaleFactor: 2.0, style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
              ),
              Container(
                width: double.infinity,
                child: Text(author.biography, textAlign: TextAlign.left, textScaleFactor: 1.5, ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
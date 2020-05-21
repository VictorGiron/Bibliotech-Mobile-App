import 'package:bibliotech/src/pages/book_list.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatefulWidget {
  BookDetail({Key key}) : super(key: key);

  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {

  @override
  Widget build(BuildContext context) {
    final Book book = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(186, 230, 227, 1.0),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context));
          },
          ),
        title: Text('Detalle', textAlign: TextAlign.left, style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: book.id,
                child: SafeArea(
                  child: Image(image: AssetImage(book.imageUrl,),
                    height: 300.0,
                  ),
                ),
              ),
              SizedBox(height:30.0),
              Container(
                height: 40.0,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(book.name, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                    ),
                    Container(
                      child: Text(book.author, textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(book.pages.toString(), textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                      Text('Paginas', textScaleFactor: 1.2,),
                    ]
                  ),
                  Container(width: 1.0, height: 40.0, color: Colors.black),
                   Column(
                    children: <Widget>[
                      Text(book.language, textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                      Text('Lenguaje', textScaleFactor: 1.2,),
                    ]
                  ),
                  Container(width: 1.0, height: 40.0, color: Colors.black),
                   Column(
                    children: <Widget>[
                      Text(book.release, textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                      Text('Lanzamiento', textScaleFactor: 1.2,),
                    ]
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Card(
                elevation: 5.0,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Text(book.description, textAlign: TextAlign.justify, textScaleFactor: 1.3,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
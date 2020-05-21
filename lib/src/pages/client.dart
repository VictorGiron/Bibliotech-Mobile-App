import 'package:flutter/material.dart';

class ClientDetail extends StatefulWidget {
  ClientDetail({Key key}) : super(key: key);

  @override
  _ClientDetailState createState() => _ClientDetailState();
}

class _ClientDetailState extends State<ClientDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget> [
              Stack(
                children: <Widget>[
                  Container(
                    height: 100.0, width: double.infinity, color: Color.fromRGBO(186, 230, 227, 1.0),
                  ),
                  SafeArea(
                    child: Row(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.arrow_back), onPressed: ()=> Navigator.pop(context))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
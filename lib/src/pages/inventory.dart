import 'package:flutter/material.dart';
import 'package:bibliotech/src/pages/book_list.dart';


class InventoryDetail extends StatefulWidget {
  InventoryDetail({Key key}) : super(key: key);

  @override
  _InventoryDetailState createState() => _InventoryDetailState();
}

class _InventoryDetailState extends State<InventoryDetail> {

  final List <Inventory> inventory = [

    Inventory(1, 'assets/portada1.jpg', 'La Hojarasca', 4, 10),
    Inventory(2, 'assets/portada2.jpg', 'La Casa de los Espiritus', 2, 14),
    Inventory(3, 'assets/portada3.jpg', 'Hombres de Maiz', 6, 12),
    Inventory(4, 'assets/portada4.jpg', 'Gringo Viejo', 3, 15),

  ]; 

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
              _inventory(),
              _inventoryBook()
            ]
          ),
        ),
      ),
    );
  }

  Widget _inventory() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Libro', textScaleFactor: 1.5,textAlign: TextAlign.center, style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('Rentados', textScaleFactor: 1.5, textAlign: TextAlign.center, style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
              VerticalDivider(width: 30.0,),
              Text('Stock', textScaleFactor: 1.5, textAlign: TextAlign.center, style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),          
            ],
          ),
        ],
      ),
    );
  }

  Widget _inventoryBook() {
    return Container(
      child: Column(
        children: <Widget>[
          for (var i = 0; i < inventory.length; i++)
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Row(
                      children: <Widget>[
                        Image(image: AssetImage(inventory[i].imageUrl), height: 110.0, width: 70.0,),
                        Text(inventory[i].bookName, textScaleFactor: 1.3,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: <Widget>[
                        Text(inventory[i].rented.toString(), textScaleFactor: 1.3,),
                        VerticalDivider(width: 70.0,),
                        Text(inventory[i].stock.toString(),  textScaleFactor: 1.3,)
                      ],
                    ),
                  )
                ],
              ),
              Divider(color: Colors.black, thickness: 1.0)
            ],
          ),
        ],
      ),
    );
  }  
}
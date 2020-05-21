import 'package:bibliotech/src/pages/book_list.dart';
import 'package:flutter/material.dart';

class LoanDetail extends StatefulWidget {
  LoanDetail({Key key}) : super(key: key);

  @override
  _LoanDetailState createState() => _LoanDetailState();
}

class _LoanDetailState extends State<LoanDetail> {

  final List<Loan> loan = [
    Loan(1, 'La Hojarasca', 'Victor Giron'),
    Loan(2, 'Gringo Viejo', 'Martin Paredes'),
    Loan(3, 'La casa de los Espiritus', 'Kevin De Leon'),
    Loan(4, 'Hombres de Maiz', 'Jhonathan Maldonado'),
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
              _loanTable(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loanTable() {
    return DataTable(
      columns: <DataColumn>[
        DataColumn(label: Text('Usuario', textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold),)),
        DataColumn(label: Text('Libro rentado', textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),        
      ], 
      rows: <DataRow>[
          for (var i = 0; i < loan.length; i++)
          DataRow(cells: [
            DataCell(Text(loan[i].user, textScaleFactor: 1.3, style: TextStyle(fontStyle: FontStyle.italic),)), 
            DataCell(Text(loan[i].book, textScaleFactor: 1.3, style: TextStyle(fontStyle: FontStyle.italic),)),
        ]),
      ],      
    );
  }
}

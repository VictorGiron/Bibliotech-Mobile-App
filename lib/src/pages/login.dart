import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget> [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bglogin.jpg"),
                fit: BoxFit.cover),            
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                height: _size.height * 0.50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget> [
                    _createEmail(),
                    _createPassword(),
                    _login(context),
                  ]
                )
                ),
            ),
            ),
          ),
        ]
      ),
      
    );

  }

 Widget _createEmail() {
      return Container(
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0,),
      child: Theme(
        data: ThemeData(
          primaryColor: Color.fromRGBO(9, 82, 86, 1.0),
          primaryColorDark: Colors.blue,
        ),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0)
            ),
            contentPadding: EdgeInsets.all(20.0),
            prefixIcon: Icon( Icons.mail, color:Colors.black ),
            hintText: 'ejemplo@gmail.com',
            labelText: 'Correo Electronico',
          ),
        ),
      ),  
    );
  }
 Widget _createPassword() {
      return Container(
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: Theme(
        data: ThemeData(
          primaryColor: Color.fromRGBO(9, 82, 86, 1.0),
          primaryColorDark: Colors.blue,
        ),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0)
            ),
            contentPadding: EdgeInsets.all(20.0),
            prefixIcon: Icon( Icons.lock, color:Colors.black ),
            hintText: 'Ejemplo#24!',
            labelText: 'Contrasena',
          ),
        ),
      ),  
    );
  }

  Widget _login(context) {
      return Container(
          margin: EdgeInsets.symmetric(horizontal:100.0, vertical: 30.0),
          child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
            onPressed: () => Navigator.pushNamed(context, 'home'),
            child: Text('Entrar'),
              textColor: Colors.white,
              color: Colors.blue[600],
          ),
      );
  }
}
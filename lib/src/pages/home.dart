import 'package:flutter/material.dart';
import 'package:bibliotech/src/pages/book_list.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List <Author> author = [
    Author(1, 'assets/gabriel.jpg', 'Gabriel Garcia Marquez', 'Gabriel García Márquez fue un escritor novelista, cuentista, guionista, editor y periodista, Premio Nobel de Literatura en el año de 1982 y uno de los grandes maestros de la literatura universal. Nació en Aracataca (Magdalena), Colombia el 6 de marzo de 1927. Hijo de Gabriel Eligio García y de Luisa Santiaga Márquez Iguarán.'),
    Author(2, 'assets/isabel.jpg', 'Isabel Allende', 'Hija del diplomático chileno Tomás Allende Pesceque quien le inculcó su afición por las letras. Nació en Lima mientras su padre se desempeñaba como embajador de Chile en Perú. Isabel Allende cursó estudios de periodismo. Mientras se iniciaba en la escritura de obras de teatro y cuentos infantiles, trabajó como redactora y columnista en la prensa escrita y la televisión. En 1960 Isabel Allende entró a formar parte de la sección chilena de la FAO, la organización de las Naciones Unidas que se ocupa de la mejora del nivel de vida de la población mediante un exhaustivo aprovechamiento de las posibilidades de cada zona. En 1962 contrajo matrimonio con Miguel Frías, del que habría de divorciarse en 1987, después de haber tenido dos hijos: Paula -que falleció, víctima de porfiria, en 1992- y Nicolás.'),
    Author(3, 'assets/miguel.jpg', 'Miguel Angel Asturias', 'En 1967, la traducción al inglés de Mulata de tal fue publicada en Boston y fue el año en el que Asturias fue galardonado con el Premio Nobel de Literatura “por sus logros literarios vivos, fuertemente arraigados en los rasgos nacionales y las tradiciones de los pueblos indígenas de América Latina“. Asturias pasó sus últimos años en Madrid, donde murió de cáncer en 1974. Está enterrado en el cementerio de Pére Lachaise, en París. Su tumba está coronada con una réplica de la Estela 14 de Ceibal.'),
    Author(4, 'assets/carlos.jpg', 'Carlos Fuentes', 'Carlos Fuentes Macías (Panamá, 11 de noviembre de 1928-Ciudad de México, 15 de mayo de 2012, fue un escritor, intelectual y diplomático mexicano, uno de los autores más destacados de su país y de las letras hispanoamericanas, escribió novelas como La región más transparente, La muerte de Artemio Cruz, Aura, Cambio de piel y Terra nostra y ensayos como La nueva novela hispanoamericana, Cervantes o la crítica de la lectura, El espejo enterrado, Geografía de la novela y La gran novela latinoamericana, entre otros'),
  ];

 final List <Book> book = [

   Book(5, 'assets/portada1.jpg', 4.0, 'La Hojarasca', 'Gabriel Garcia Marquez', 120, 'Marzo de 1955', 'Espanol', 'La Hojarasca es  una  novela escrita por Gabriel García Márquez. Publicada por primera vez en el año de 1955, el escritor se demoró siete años en encontrar un editor para este libro. Ampliamente celebrada como la primera aparición de Macondo, el pueblo ficticio que más tarde se hizo famoso en 100 años de soledad, La Hojarasca es un campo de pruebas para muchos de los temas y personajes inmortalizados en dicho libro. También es el título de una colección de cuentos de Gabriel García Márquez.'),
   Book(6, 'assets/portada2.jpg', 4.5, 'La Casa de los Espiritus', 'Isabel Allende', 96, 'Enero de 1982', 'Espanol', 'La casa de los espíritus es la primera novela de la escritora chilena Isabel Allende, publicada en Buenos Aires por Editorial Sudamericana en 1982. Tuvo un éxito inmediato de superventas a nivel internacional, ha sido traducida a numerosos idiomas1​ y llevada al cine con el mismo nombre por Bille August; estrenada en 1993, la protagonizaron Jeremy Irons, Meryl Streep, Glenn Close, Winona Ryder y Antonio Banderas .​ También hay adaptaciones al teatro, como la de la dramaturga estadounidense Caridad Svich, que se ha presentado en países como Costa Rica. Calificada dentro del realismo mágico, la novela incorpora cosas inverosímiles y extrañas a lo ordinario. La historia relata la vida de la familia Trueba a lo largo de cuatro generaciones y sigue los movimientos sociales y políticos del período poscolonial de Chile. Narrada desde la perspectiva de dos de sus protagonistas, los acontecimientos retratados en ella tratan sobre el amor, la familia, la muerte, los fantasmas, las clases sociales, la revolución, la política, los ideales y lo maravilloso'),
   Book(7, 'assets/portada3.jpg', 3.5, 'Hombres de Maiz', 'Miguel Angel Asturias', 113, 'Abril de 1949', 'Espanol','Hombres de maíz es una novela del escritor guatemalteco y premio Nobel de Literatura Miguel Ángel Asturias, publicada en el año 1949. Su título hace referencia a un mito del Popol Vuh, uno de los libros sagrados de los mayas.​ Esta novela es generalmente considerada la obra maestra de Asturias,2​ aunque sigue siendo una de sus novelas menos comprendidas.​ Esta novela fue incluida en la lista de las 100 mejores novelas en español del siglo XX del periódico español.​ El libro está escrito en seis partes, cada una explorando el contraste entre las costumbres tradicionales de los indígenas y las de una sociedad que está en pleno proceso de modernización y cambio. Explora el mundo mágico de las comunidades indígenas, un tema del cual el autor era a la vez apasionado y conocedor. La novela se basa en la leyenda tradicional, aunque la historia es una creación propia de Asturias.'),
   Book(8, 'assets/portada4.jpg', 4.6, 'Gringo Viejo', 'Carlos Fuentes', 89,'Septiembre de 1985', 'Espanol','Gringo viejo es una novela del escritor mexicano Carlos Fuentes, publicada en 1985. Cuenta la historia de un escritor y columnista estadounidense que lo abandona todo para cruzar la frontera mexicana con el propósito de unirse a las tropas de Francisco Villa. Basada en la historia real del periodista y escritor Ambrose Bierce, Gringo viejo fue la novela que lanzó a Fuentes a la fama, y se convirtió en el primer best seller de un autor mexicano en la ciudad de Nueva York.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[

            DrawerHeader(
              child: Text('', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic), textScaleFactor: 1.5,),
              decoration: BoxDecoration(
                color: Colors.blue[600],
                image: DecorationImage(
                  image: AssetImage("assets/drawer.png"),
                     fit: BoxFit.cover)
              ),
            ),
            ListTile(
              title: Text('Inventario', textScaleFactor: 1.3, style: TextStyle(fontStyle: FontStyle.italic),),
              leading: Icon(Icons.book),
              onTap: () {
                Navigator.pushNamed(context, 'inventory');
              },
            ),
            ListTile(
              title: Text('Clientes', textScaleFactor: 1.3, style: TextStyle(fontStyle: FontStyle.italic)),
              leading: Icon(Icons.people),
              onTap: () {
                Navigator.pushNamed(context, 'client');
              },
            ),
            ListTile(
              title: Text('Prestamos', textScaleFactor: 1.3, style: TextStyle(fontStyle: FontStyle.italic)),
              leading: Icon(Icons.folder),
              onTap: () {
                Navigator.pushNamed(context, 'loan');
              },
            ),
            ListTile(
              title: Text('Cerrar Sesion', textScaleFactor: 1.3, style: TextStyle(fontStyle: FontStyle.italic)),
              leading: Icon(Icons.exit_to_app),              
              onTap: () {
                Navigator.pushNamed(context, 'login');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget> [
              _search(),
              _scrollAuthor(),
              SizedBox(height: 30.0,),
              _clasification(),
              SizedBox(height: 30.0,),

              _book(),
            ]
          ),
        ),
      ),
       appBar: AppBar(
         automaticallyImplyLeading: false,
         backgroundColor: Color.fromRGBO(186, 230, 227, 1.0),
         title: Text( 'Bibliotech', textAlign: TextAlign.left, style: TextStyle(color: Colors.black)),
        ),
      );
  }

  Widget _search() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
          hintText: 'search',
          prefixIcon: Icon(Icons.search),
        ),
      ),
    ); 
  }

 Widget _scrollAuthor() {
    return Column(
      children: <Widget>[
      Container(
        child: CarouselSlider(
          enableInfiniteScroll: false,
          height: MediaQuery.of(context).size.height * 0.35,
          viewportFraction: 0.4,
          initialPage: 0,
          items: author.map((img){
            return Builder(
            builder: (BuildContext context){
              return GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'author', arguments: img),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Hero(
                    tag: img.id,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image( 
                        image: AssetImage(img.imageUrl),
                        height: 200.0,
                      ),
                    ),
                  )
                ),
              );
                }
             );
            }).toList()
          ),
        ),
      ],
    );
  }

 Widget _clasification() {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 15.0),
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.black)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: FlatButton(
            child: Text('Popular'),
            onPressed: (){
            },
            ),
          ),
          Container(color: Colors.black, width: 2.0, height: 40.0,),
          Container(
            child: FlatButton(
              child: Text('Nuevos'),
              onPressed: (){},
            ),
          ),
          Container(color: Colors.black, width: 2.0, height: 40.0,),
          Container(
            child: FlatButton(
              child: Text('Destacados'),
              onPressed: (){},
            ),
          ),
        ],
      ),
    );
  }

 Widget _book() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: Column(
        children: <Widget>[
          for (var i = 0; i < book.length; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              height: 150.0,
              width: double.infinity,
              child: Card(
                elevation: 10.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: ()=> Navigator.pushNamed(context, 'book_detail', arguments: book[i]),
                      child: ClipRRect(
                        child: Container(
                          margin: EdgeInsets.only(left: 5.0),
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Hero(
                            tag: book[i].uniqueId = '${book[i].id}-poster',
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image(
                                image: AssetImage(book[i].imageUrl),
                                height: 200.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    VerticalDivider(width: 25.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(book[i].puntuation.toString(), 
                      textScaleFactor: 1.5
                      ),
                      Text(book[i].name, 
                        textAlign: TextAlign.justify,
                        textScaleFactor: 1.2
                      ),
                      Text(book[i].author, 
                        textScaleFactor: 1.2
                      ),
                    ],
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}


class Book {
  
  String uniqueId;

  final int id;
  final String imageUrl;
  final double puntuation;
  final String name;
  final String author;
  final int pages;
  final String release;
  final String language;
  final String description;

Book(
  this.id, this.imageUrl, this.puntuation, this.name, this.author, this.pages, this.release, this.language, this.description
);

}


class Author {

  final int id;
  final String imageUrl;
  final String name;
  final String biography;

Author(this.id, this.imageUrl, this.name, this.biography);
}


class Inventory{

  final int id;
  final String imageUrl;
  final String bookName;
  final int rented;
  final int stock;

Inventory(this.id, this.imageUrl, this.bookName, this.rented, this.stock);
}


class Loan {

  final int id;
  final String book;
  final String user;

  Loan(this.id, this.book, this.user);

}
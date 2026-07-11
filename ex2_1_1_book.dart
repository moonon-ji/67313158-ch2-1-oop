class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  void showDetail() {
    print("Title : $title");
    print("Author: $author");
    print("Price : $price บาท");
    print("-------------------");
  }
}

void main() {
  Book book1 = Book("Flutter Basics", "John Smith", 450);
  Book book2 = Book("Dart Programming", "Jane Doe", 550);

  book1.showDetail();
  book2.showDetail();
}
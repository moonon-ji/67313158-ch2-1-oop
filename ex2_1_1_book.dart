// สร้าง class และกำหนดfild
class Book {
  String title;
  String author;
  double price;

// สร้างObject จาก class แต่เขียนในรูปแบบ constructor
  Book(this.title, this.author, this.price);
// สร้างmethodแสดงผล
  void showDetail() {
    print("Title : $title");
    print("Author: $author");
    print("Price : $price บาท");
  }
}

void main() {
  // กำหนดค่า
  Book book1 = Book("How to do this?", "John Smith", 450);
  Book book2 = Book("Dart Programming", "Jane Doe", 550);
//ใช้method แสดงผล
  book1.showDetail();
  book2.showDetail();
}
class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }

  void displayBook(double discountPercent) {
    print("Title: $title");
    print("Author: $author");
    print("Original Price: \$${price.toStringAsFixed(2)}");
    print(
      "Discounted Price: \$${discountedPrice(discountPercent).toStringAsFixed(2)}",
    );
  }
}

void main() {
  Book book1 = Book("Data Structures", "Seymour Lipschutz", 40.0);
  Book book2 = Book("Introduction to Algorithm", "Thomas H. Corman", 50.0);

  book1.displayBook(10);
  book2.displayBook(20);
}

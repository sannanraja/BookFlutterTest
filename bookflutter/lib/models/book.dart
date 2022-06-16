

class Book {
  Book({
    required this.author,
    required this.bookID,
    required this.discountPercentage,
    required this.description,
    required this.title,
    required this.itemCount,
    required this.price,
    required this.isLiked,
    required this.ratings,
    required this.coverImage,
  });
  late String author;
  late String bookID;
  late int discountPercentage;
  late String description;
  late String title;
  late double price;
  late double ratings;
  late bool isLiked;
  var itemCount = 0;
  late String coverImage;

  Book.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    bookID = json['bookID'];
    discountPercentage = json['discountPercentage'];
    itemCount = json['itemCount'];
    description = json['description'];
    title = json['title'];
    price = json['price'];
    isLiked = json['isLiked'];
    ratings = json['ratings'];
    coverImage = json['coverImage'];
  }
  Book.fromSnapShot(var firestoreSnapshot) {
    author = firestoreSnapshot['author'];
    bookID = firestoreSnapshot['bookID'];
    discountPercentage = firestoreSnapshot['discountPercentage'];
    itemCount = firestoreSnapshot['itemCount'];
    description = firestoreSnapshot['description'];
    title = firestoreSnapshot['title'];
    price = firestoreSnapshot['price'];
    isLiked = firestoreSnapshot['isLiked'];
    ratings = firestoreSnapshot['ratings'];
    coverImage = firestoreSnapshot['coverImage'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['author'] = author;
    _data['bookID'] = bookID;
    _data['discountPercentage'] = discountPercentage;
    _data['description'] = description;
    _data['title'] = title;
    _data['price'] = price;
    _data['coverImage'] = coverImage;
    _data['itemCount'] = itemCount;
    return _data;
  }

  setItemcount(int count) {
    itemCount= count;
  }
}

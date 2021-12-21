import 'package:flutter/material.dart';

class BookModel {
  final String title;
  final String author;
  final String thumbnailUrl;
  final String description;

  BookModel(
      {@required this.title,
      @required this.author,
      this.thumbnailUrl,
      this.description})
      : assert(title != null);
  // assert(description != null);
}

import 'package:flutter/material.dart';
import 'package:library_app_flutter/book_model/bookmodel.dart';

class BookDetails extends StatelessWidget {
  final BookModel book;
  BookDetails({@required this.book});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          book.title,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Color(0xFF3BBB6D),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Image.network(book.thumbnailUrl),
                  height: 150,
                ),
                SizedBox(height: 15),
                Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      Stack(children: [
                        Text(
                          'Rating:',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: Text(
                            '4.5/5',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ]),
                      SizedBox(height: 10),
                      Text(
                        book.title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        book.author,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Description',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        book.description,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w300),
                      )
                    ]))
              ],
            ),
          ]),
        ),
      )),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:library_app_flutter/book_controllers.dart/bookController.dart';
import 'package:library_app_flutter/book_controllers.dart/bookController2.dart';
import 'package:library_app_flutter/book_model/bookmodel.dart';
import 'package:library_app_flutter/screens/bookDetails.dart';

class SearchedBooks extends StatelessWidget {
  final BookModel book;
  SearchedBooks({this.book});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SearchedBookController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3BBB6D),
        title: Center(
            child: Text(
          'Books on ${Get.arguments}',
          style:
              TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w500),
        )),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Obx(() {
              return controller.isLoading.value
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: controller.getbooks.length,
                      itemBuilder: (context, index) {
                        var item = controller.getbooks[index];
                        return Card(
                          child: ListTile(
                            title: Text(item.title),
                            subtitle: Text(item.author),
                            leading: Image.network(item.thumbnailUrl),
                            onTap: () {
                              _openDetailPage(context, item);
                            },
                          ),
                        );
                      },
                    );
            }),
          )
        ],
      )),
    );
  }

  _openDetailPage(context, BookModel book) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => BookDetails(book: book)));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:library_app_flutter/book_model/bookmodel.dart';
import 'package:library_app_flutter/book_services/services.dart';
import '../book_services/service2.dart';

class BookController extends GetxController {
  var getbooks = <BookModel>[].obs;
  var isLoading = true.obs;
  BookServices service = BookServices();
  SearchedBookServices searchedBook = SearchedBookServices();
  @override
  void onInit() {
    callBooksList();
    super.onInit();
  }

  void callBooksList() async {
    try {
      var result = await service.getAllBooks();
      isLoading.value = true;
      if (result != null) {
        getbooks.assignAll(result);
      } else {
        print('Null');
      }
    } finally {
      isLoading.value = false;
    }

    update();
  }

 
}

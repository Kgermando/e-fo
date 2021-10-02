import 'package:flutter/cupertino.dart';
import 'package:focad/routes/enum.dart';

class AppProvider with ChangeNotifier {
  DisplayPage? currentPage;

  AppProvider.init() {
    changeCurrentPage(DisplayPage.home);
  }

  changeCurrentPage(DisplayPage newPage) {
    currentPage = newPage;
    notifyListeners();
  }
}

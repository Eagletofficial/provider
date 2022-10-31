import 'package:flutter/cupertino.dart';

class User extends ChangeNotifier {
  final List<String> _user = ['Teeay', 'Kay', 'Yamex'];
  int get number => user.length;
  List<String> get user => _user;

  void addUser(String user) {
    _user.add(user);
    notifyListeners();
  }

  void removeUser(String user) {
    _user.remove(user);
    notifyListeners();
  }
}

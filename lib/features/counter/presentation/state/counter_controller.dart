import 'package:flutter/material.dart';
import '../../data/counter_repository.dart';
import '../../domain/counter_model.dart';

class CounterController extends ChangeNotifier {
  final CounterRepository repository;

  late CounterModel counter;

  CounterController(this.repository) {
    counter = repository.getInitialCounter();
  }

  int get value => counter.value;

  void increment() {
    counter.value++;
    //** notifyListeners() does NOT say WHICH place changed It only says:
    // “Hey, something changed in this controller”
    //"Who is listening to this controller?" -> rebuild ALL of them
    //Provider does NOT track fields (like value, name, etc.)
    // It only tracks: Which widgets are listening to this controller */
    notifyListeners();
  }

  void decrement() {
    counter.value--;
    notifyListeners();
  }
}

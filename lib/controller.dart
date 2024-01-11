import 'package:get/get.dart';
import 'model.dart';

class Controller extends GetxController{
  final person = Person().obs;

  void updateInfo(){
    person.update((value) {
      value?.age++;
      value?.name = 'Coding Chef';
    });
  }
}
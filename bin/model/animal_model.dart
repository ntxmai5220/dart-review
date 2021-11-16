import '../abstract_example.dart';
import 'person_model.dart';

class Animal {
  String name;
  int age;
  Animal(this.name, this.age);

  intro() => print('$name is an animal');
}

class Dog extends Animal {
  // từ khóa with để kế thừa nhiều class
  Dog(String name, int age)
      : super(name, age); //kế thừa các thuộc tính từ class cha

  @override
  intro() {
    print('$name is a dog');
    super.intro(); //goi intro() class cha - Animal
    //return super.intro();
  }
}

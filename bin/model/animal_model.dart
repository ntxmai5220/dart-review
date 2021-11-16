import '../abstract_example.dart';
import 'person_model.dart';

class Animal extends Activity {
  String name;
  int age;
  Animal(this.name, this.age);

  intro() => print('$name is an animal');
  @override
  void run() {
    print('$name runs fast');
  }

  @override
  void eat() {
    print('The animal - $name is eating');
  }

  void details() {
    print('Class Animal extaneds Activity');
    super.detail();
  }
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

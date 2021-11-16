import 'abstract_example.dart';
import 'model/animal_model.dart';
import 'model/person_model.dart';

void main(List<String> arguments) {
  //print('Hello world!');
  testPerson();
  testAnimal();
  testAbstract();
}

void testPerson() {
  //truyền params bình thường theo đúng thứ tự constructor
  Person second = Person.man('Nam', 20);
  Person second2 = Person.man('Nam 2', 22, isMan: false);

  //truyền params teo tên
  Person first = Person(14, isMan: true, name: 'A');

  Person third = Person.woman('Nu', 17);

  first.introPerson();
  second.introPerson();
  second2.introPerson();
  third.introPerson();

  print('${first.name} khong the truy xuat _age');
  print('su dung getter de truy xuat _age ${first.personAge}');

  print(Person.total()); //phuong thuc static chi truy xuat bang class name
}

void testAnimal() {
  Animal a = Animal('Mi', 2);

  Dog b = Dog('Lu', 1);

  Animal c = Dog('Vang', 3);
  a.intro();
  //neu o class con khong override lai thi se goi intro cua class cha
  b.intro();
  c.intro();
  print(c.runtimeType);
}

void testAbstract() {
  Dog dog = Dog('Den', 1);
  Person man = Person.man('Nam', 12);

  dog.run();
  man.run();
  dog.details();
  man.detail();
  dog.eat();
  man.eat();
}

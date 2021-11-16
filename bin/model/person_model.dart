import '../abstract_example.dart';

class Person {
  static int countWoman = 0; //static truy xuất bằng class name
  static int countMan = 0;
  String name;
  final int _age; //private
  bool isMan;
  Person(
    this._age, {
    //named params trong {..} sau param bắt buộc
    // required -> bắt buộc phải truyền vào
    required this.name, // params in {...} -> truyền theo tên
    required this.isMan,
  });

  //names constructor
  Person.man(this.name, this._age, {this.isMan = true}) {
    //this.isMan mặc định true nếu không truyền giá trị
    countMan++;
  }

  //names constructor
  // Person.woman({
  //   required this.name,
  //   required this.age,
  //   this.isMan = false,
  // });

  Person.woman(String name, this._age) //không cần xử lý truyền như this.age
      : name = name + '_woman', //xử lý giá trị param khi truyền vào
        isMan = false //luôn luôn false
  {
    countWoman++;
  }

  //method
  int get personAge => _age; //getter

  intro() => print('I\'m $name');

  void activity() {
    print('$name is doing somthing');
  }

  //phuong thuc static chi truy xuat bang class name
  static String total() =>
      'Person.man: $countMan --- Person.woman: $countWoman';

  introPerson() => print(toString());
  //có sẵn toString
  @override
  String toString() => 'Person(name: $name, age: $_age, isMan: $isMan)';

}

//không có từ khóa interface => bất kỳ class nào cũng có thể là interface
//nếu được class khác implements thi phải override tất cả các methods
//class khác extends như abstract class thì chỉ bắt buộc override các methods chưa hiện thực
abstract class Activity {
  void detail() { //class con có thể k override và sử dụng trực tiếp
    print('Abstract class Activity');
  }

  void run(); //chỉ cần khai báo không cần hiện thực => class con phải override

  void eat(); // tự hiểu là abstract methods
}

// các lớp con kế thừa cần phải override lại tất cả methods trong abstract class

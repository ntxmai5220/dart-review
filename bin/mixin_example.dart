import 'abstract_example.dart';
import 'model/animal_model.dart';

enum Type { square, triangle, rectangle, circle }

mixin Shape {//on X
  // on X => nếu sử dụng on sẽ giới hạn các class sử dụng mixin Shape này lại
  //là các class con của X
  int getEdges(type) {
    switch (type) {
      case Type.square:
        print('Square');
        return 4;
      case Type.triangle:
        print('Triangle');
        return 3;
      case Type.rectangle:
        print('Rectangle');
        return 4;
      default:
        print('Other');
        return 0;
    }
  }
}

class A with Shape {
  // sử dụng with với class không có constructor
  //sử dụng mixin và with để gộp nhưng gì ở Shape (mixin) vào class A
  //implements thì phải override tất cả
  //có thể override hoặc không override thì dùng luôn
  int id;
  Type type;
  A({
    required this.id,
    required this.type,
  });

  show() {
    print('A has ${super.getEdges(type)} edges');
  }

  // @override
  // int getEdges(type) {
  //   // TODO: implement getEdges
  //   return super.getEdges(type);
  // }
}

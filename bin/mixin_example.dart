enum Type { square, triangle, rectangle, circle }

mixin Shape {
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
  //sử dụng mixin và with để gộp nhưng gì ở Shape vào class A
  int id;
  Type type;
  A({
    required this.id,
    required this.type,
  });

  show() {
    print('A has ${super.getEdges(type)} edges');
  }

  @override
  int getEdges(type) {
    // TODO: implement getEdges
    return super.getEdges(type);
  }
}

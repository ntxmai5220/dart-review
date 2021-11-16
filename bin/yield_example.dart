Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) {
    yield k++;
  }
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) {
    //await Future.delayed(Duration(seconds: 1));
    yield k++;
  }
}

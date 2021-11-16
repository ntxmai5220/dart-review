Future<int> firstTask() async {
  getTime('run first task');
  await Future.delayed(
      Duration(seconds: 5)); //delay 5s sau đó mới tiếp tực thực hiện
  getTime('after delay first task');
  getTime('end first task');
  return 1;
}

void secondTask() {
  var i = 0;
  getTime('run second task');
  getTime('run second task ${i++}');
  getTime('end second task ${i++}');
}

void getTime(String str) {
  var date = DateTime.now();
  print('${date.hour}:${date.minute}:${date.second}:${date.millisecond}: $str');
}

import 'dart:async';

void main() async {
  task1();
  // task2();
  String task2_result = await task2_future();
  print('Task 2 result: $task2_result');
  task3();
}

void task1() {
  String result = 'Task 1 data';
  print('Task 1 completed: $result');
}

Future<String> task2_future() async {
  String result = '';
  await Future.delayed(Duration(seconds: 3), () {
    result = 'Task 2 data';
    print('Task 2 completed with: $result');
  });
  return result;
}

void task2() {
  Future.delayed(Duration(seconds: 3), () {
    String result = 'Task 2 data';
    print('Task 2 completed with: $result');
  });
}

void task3() {
  String result = 'Task 3 data';
  print('Task 3 completed with: $result');
}

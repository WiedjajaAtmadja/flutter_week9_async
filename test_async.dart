import 'dart:async';

void main() {
  print('Task 1 completed');

  Future.delayed(Duration(seconds: 10), () {
    print('Task 2 completed');
  });

  print('Task 3 completed');
}

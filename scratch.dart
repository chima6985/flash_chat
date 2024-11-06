import 'dart:io';


// asychrouns p
void main() {
  performTasks();
}

void performTasks() {
  task1();
  task2();
  task3();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 is complete');
}

void task2() async {
  Duration tenSeconds = Duration(seconds: 10);
  await Future.delayed(tenSeconds, (){
 String result = 'task 2 data';
  print('Task 2 is complete');
  });
 
}

void task3() {
  String result = 'task 3 data';
  print('Task 3 is complete');
}
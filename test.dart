void main() {
  // 함수(메서드) - 가장 기본이 되는 "동작에 대한" 단위 중 하나
  /// return type, 함수명 (param) {
  ///  함수 내 동작 할 코드
  /// }
  String text = 'Hello World';
  int num1 = 10;
  int num2 = 20;
  fun1();
  fun2();
  int sum = add(num1, num2);
  print(sum);

  loop();

}
void fun1() {
  bool isTrue = true;
  int standard = 0;
  String hi = '안녕';
  if (standard < 0) {
    print('음수');
  } else if (standard > 0) {
    print('양수');
  } else {
    print('0이다');
  }
}

// flutter3.10 / dart 3.0 이상부터 변경 부분이 있음.
void fun2() {
  int num = 100;
  switch (num) {
    case 1: print('$num 이건 1');
    case 2: print('$num 이건 2');
    case > 10
        : print('$num 이건 10 이상');
    default: print('not 1, 2');
  }
}

int add(int num1, int num2) {

  return num1 + num2;
}

void loop() {
  int num;
  for (int i = 0; i < 10; i++) {
    num = i;
    print(num);
  }

  List<int> indexes = [0, 1, 2, 3, 4, 5];

  for (final idx in indexes) {
    print('for idx $idx');
  }

  bool isTrue = true;
  int count = 0;
  while (isTrue) {
    if (count > 5) {
      isTrue = false;
      print('끝!');
    }
    count++;
  }

  // do - while
  /// do {
  /// 선행 진행 / 반복 될 코드
  /// } while (조건);

  int num2 = 0;
  do {
    num2++;
    if (num2 == 4) continue; // 여기 함수는 진행 되지 않음

    print('do while $num2');

  } while (num2 < 10);
}
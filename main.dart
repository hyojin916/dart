import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  // 1. 유저에게 어떤 타입을 낼 것인지 물어 보는 질의 창

  print('가위 바위 보 중 하나를 정해서 입력해주세요.');
  final String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error';

  print(userInput);
  // 2. 컴퓨터가 낼 타입을 결정하는 함수
  const List<String> options = ['가위', '바위', '보'];
  final cpuInput = options[Random().nextInt(3)];

  // 3. 유저와 컴퓨터 타입에 대한 결과를 계산하는 함수
  final result = getResult(userInput, cpuInput);
  print(result);
}

String getResult(String userInput, String cpuInput) {
  const cpuWin = 'cpu 승';
  const userWin = '내가 이김';
  const draw = '비김';

  String result = draw;
  switch (userInput) {
    case '가위':
      result = (cpuInput != '가위' && cpuInput == '바위') ? cpuWin : userWin;
      break;
    case '바위':
      result = (cpuInput != '바위' && cpuInput == '보') ? cpuWin : userWin;
      break;
    case '보':
      result = (cpuInput != '보' && cpuInput == '가위') ? cpuWin : userWin;
      break;
    default:
      result = '제대로 내라';
      break;
  }

  return result;
}

void main() {
  // List
  List<String> korean = ['가', '나', '다', '라'];

  // 접근
  print(korean[0]); // 가

  // length
  print(korean.length); // 4

  // 값 추가 (add)
  korean.add('마');
  print(korean); // [가, 나, 다, 라, 마]

  // 값 삭제 (remove)
  korean.remove('가');
  print(korean); // [나, 다, 라, 마]

  // forEach
  korean.forEach((item) {
    print(item);
  });
}

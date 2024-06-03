// method - 함수 - 클래스 내부에 있는 함수

void main() {
  CalculatorTwo calcTwo = CalculatorTwo(5);

  print(calcTwo.multiplication());
}

class CalculatorTwo {
  final int number;

  CalculatorTwo(this.number);

  int multiplication() {
    return number * 2;
  }
}

class CalculatorFour extends CalculatorTwo {
  CalculatorFour(int number) : super(number);

//   부모의 메서드를 덮어쓰기 @override
  @override
  int multiplication() {
    return super.number * 4;
  }
}

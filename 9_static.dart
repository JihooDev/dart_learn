void main() {
  Employee jihoo = Employee('지후');
// class에 귀속이 된다는것은 class에서 값을 변경하여 할당할 수 있다.
  Employee.building = 'BK타워';

  Employee.printBuilding();

  jihoo.printNameAndBuilding();
}

class Employee {
//   static은 instance에 귀속되지 않고 class에 귀속된다.
  static String? building;
  final String name;

  Employee(
    this.name,
  );

  void printNameAndBuilding() {
    print('저의 이름은 $name 이고 $building 건물에서 근무하고 있습니다');
  }

  static void printBuilding() {
    print('저는 $building 에서 근무중입니다');
  }
}

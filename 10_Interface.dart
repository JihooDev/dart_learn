void main() {
  MyFriendMember friend = MyFriendMember('장훈');
  MyFamilyMember family = MyFamilyMember('아버지');

  friend.memberName();
  family.memberName();
}

// interface

// abstract 로 선언하면 다른곳에서 인스턴스로 생성하지 못한다.
// 또한 함수의 body를 따로 적어주지 않아도 괜찮다.
abstract class MembersInterface {
  String name;

  MembersInterface(this.name);

  void memberName();
}

class MyFriendMember implements MembersInterface {
  String name;

  MyFriendMember(this.name);

  void memberName() {
    print("멤버 이름은 $name 입니다");
  }
}

class MyFamilyMember implements MembersInterface {
  String name;

  MyFamilyMember(this.name);

  void memberName() {
    print("$name 입니다");
  }
}

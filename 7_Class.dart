void main() {
  Member singer = Member('가수', ['안지영', '아이유']);
  Member actor = Member('배우', ['정우성', '송강호']);
  MyMember friends = MyMember('친구', ['홍장훈', '홍용성', '강치우']);

  singer.addMember('뉴진스');
  actor.addMember('천우희');

  print(singer.members);
  print(actor.members);
  print(friends.members);
  friends.hello();
  singer.hello();
}

class Member {
  String name;
  final List<String> members;

//   생성자
//   Member(String name, List<String> members)
//       : this.name = name,
//         this.members = members;
  Member(this.name, this.members);

//   멤버 추가
  void addMember(String name) {
    return this.members.add(name);
  }

  void hello() {
    print('${members} 입니다');
  }

  // getter
  String get lastMember {
    return this.members[this.members.length - 1];
  }

  // setter
  set addMemberSetter(String name) {
    this.members[0] = name;
  }
}

class MyMember extends Member {
  MyMember(String name, List<String> members) : super(name, members);

  void membersList() {
    print(members);
  }
}

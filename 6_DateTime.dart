void main() {
  DateTime now = DateTime.now();

  print(now); // 2023-11-06 08:18:41.747
  print(now.year); // 2023
  print(now.month); // 11
  print(now.day); // 6
  print(now.hour); // 8
  print(now.minute); // 18
  print(now.second); // 41
  print(now.millisecond); // 747

  Duration duration = Duration(seconds: 60);

  print(duration); // 0:01:00.000000
  print(duration.inDays); // 0
  print(duration.inHours); // 0
  print(duration.inMinutes); // 1
  print(duration.inSeconds); // 60
  print(duration.inMilliseconds); // 60000

  DateTime specificDay = DateTime(2017, 11, 23);

  print(specificDay); // 2017-11-23 00:00:00.000

  final difference = now.difference(specificDay);

  print(difference); // 52184:25:47.072000
  print(difference.inDays); // 2174
  print(difference.inHours); // 52184
  print(difference.inMinutes); // 3131065

  print(now.isAfter(specificDay)); // true = 현재 시간이 specificDay 설정 시간보다 더 흘렀기 때문
  print(now.isBefore(specificDay)); // false
}

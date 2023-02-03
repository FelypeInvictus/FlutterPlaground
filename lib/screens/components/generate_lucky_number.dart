import 'dart:math';

String GenerateLuckyNumber() {
  var randomNumber = Random();
  int luckyNumber = randomNumber.nextInt(500);

  return "$luckyNumber";
}

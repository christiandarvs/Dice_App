import 'dart:math';

int generateRandomNumber(int numberLimit) {
  int? currentValue;

  currentValue = Random().nextInt(numberLimit) + 1;

  return currentValue;
}

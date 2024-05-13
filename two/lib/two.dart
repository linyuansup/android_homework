void showSeason(int month) {
  if (month == 12 || month == 1 || month == 2) {
    print('Winter');
  } else if (month == 3 || month == 4 || month == 5) {
    print('Spring');
  } else if (month == 6 || month == 7 || month == 8) {
    print('Summer');
  } else if (month == 9 || month == 10 || month == 11) {
    print('Autumn');
  } else {
    print('Invalid month');
  }
}

void show99() {
  for (int i = 1; i < 10; i++) {
    for (int j = 1; j <= i; j++) {
      print('$j * $i = ${i * j}');
    }
  }
}

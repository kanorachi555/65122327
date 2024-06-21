
void checkOddOrEven() {
  int number = 15;
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
  
  for (int i = 1; i <= 5; i++) {
    print('Number: $i');
  }
}

void main() {
  checkOddOrEven();
}


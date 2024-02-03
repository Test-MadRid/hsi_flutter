int factorialRecursive(int value) {
  if (value == 1) {
    return value;
  } else {
    return value * factorialRecursive(value - 1);
  }
}

void looping(int value) {
  if (value == 0) {
    print('Selesai');
  } else {
    print('iterasi ke-$value');
    looping(value - 1);
  }
}

void main() {
  print(factorialRecursive(10));

  looping(10000);
}

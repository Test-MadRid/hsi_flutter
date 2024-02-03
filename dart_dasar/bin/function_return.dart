String ahlan(String name) {
  return 'Ahlan wa Sahlan $name';
}

int sum(List<int> numbers) {
  var total = 0;
  for (var element in numbers) {
    total += element;
  }
  return total;
}

void main() {
  var data = ahlan('Ahmad');
  print(data);

  var total = sum([30, 40, 50]);
  print(sum([10, 20, 30]));
  print(total);
}

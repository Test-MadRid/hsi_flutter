void ahlan(String name, String Function(String) filter) {
  print('Ahlan wa Sahlan ${filter(name)}');
}

void main() {
  ahlan('Ridwan', (name) => name.toUpperCase());

  var upperFunction = (String name) {
    return name.toUpperCase();
  };

  var lowerFunction = (String name) => name.toLowerCase();

  var result1 = upperFunction('Ridwan');

  var result2 = lowerFunction('Ridwan');

  print(result1);
  print(result2);
}

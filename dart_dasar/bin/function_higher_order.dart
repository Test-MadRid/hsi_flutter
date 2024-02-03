void ahlan(String name, String Function(String) filter) {
  var filteredName = filter(name);
  print('ahlan wa Sahlan $filteredName');
}

String filterBadWord(String name) {
  if (name == 'gila') {
    return '****';
  } else {
    return name;
  }
}

void main() {
  ahlan('Ahmad', filterBadWord);
  ahlan('gila', filterBadWord);
}

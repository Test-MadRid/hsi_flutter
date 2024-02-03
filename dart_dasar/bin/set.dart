void main() {
  Set<int> number = {};
  var string = <String>{};

  print(number);
  print(string);

  var names = <String>{
    'HSI',
    'HSI',
    'Muhammmad',
    'Muhammmad',
    'Ridwan',
  };

  // names.add('HSI');
  // names.add('HSI');
  // names.add('Muhammad');
  // names.add('Muhammad');
  // names.add('Ridwan');

  print(names);
  print(names.length);

  names.remove('HSI');
  names.remove('Tidak ada');
  print(names);
  print(names.length);
}

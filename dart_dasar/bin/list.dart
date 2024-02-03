void main() {
  List<int> listInt = [];

  var listString = <String>[];

  print(listInt);
  print(listString);

  var names = <String>[
    'HSI',
    'MUhammad',
    'Ridwan',
  ];

  // names.add('HSI');
  // names.add('Muhammad');
  // names.add('Ridwan');

  print(names);
  print(names.length);

  print(names[1]);

  names[1] = 'Ahmad';
  print(names[1]);

  names.removeAt(0);
  print(names);
}

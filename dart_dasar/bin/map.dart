void main() {
  Map<String, String> map1 = {};
  var map2 = Map<String, String>();
  var map3 = <String, String>{};

  print(map1);
  print(map2);
  print(map3);

  var names = <String, String>{
    'first': 'HSI',
    'middle': 'Muhammad',
    'last': 'Ridwan',
  };

  // names['first'] = 'HSI';
  // names['middle'] = 'Muhammad';
  // names['last'] = 'Ridwan';

  print(names);
  print(names.length);
  print(names['last']);

  names['middle'] = 'Ahmad';
  print(names);

  names.remove('first');
  print(names);
}

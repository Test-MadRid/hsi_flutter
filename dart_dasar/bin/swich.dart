void main() {
  var nilai = 'A';

  switch (nilai) {
    case 'A':
      print('Masyaallah, Nilai Antum Sempurna');
      break;
    case 'B':
    case 'C':
      print('Masyaallah, Jayyid');
      break;
    case 'D':
    case 'E':
      print('Afwan, Antum masih harus mengulang');
    default:
      print('Antum tidak pernah mengerjakan Quiz');
  }
}

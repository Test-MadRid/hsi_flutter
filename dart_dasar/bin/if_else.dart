void main() {
  var nilai = 78;
  var absen = 90;

  if (nilai >= 75 && absen >= 75) {
    print('Anda Lulus');
  } else {
    print('Anda Tidak Lulus');
  }

  if (nilai >= 85) {
    print('Nilai anda A');
  } else if (nilai >= 75) {
    print('Nilai anda B');
  } else if (nilai >= 74) {
    print('Nilai anda C');
  } else if (nilai >= 50) {
    print('Nilai anda D');
  } else {
    print('Nilai Anda E');
  }
}

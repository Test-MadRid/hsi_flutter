import 'dart:ffi';
import 'dart:io';

void main() {
  print('==========> Selamat Datang di Program Kalkulator <==========');
  print('Berikut Menu yang dapat antum gunakan : ');
  print('1. Penjumlahan');
  print('2. perkalian');
  print('3. Hitung Zakat');
  print('4. Hitung Luas Kotak');
  print('\n');
  stdout.write('Masukan Nomor : ');
  int? pilih = int.parse(stdin.readLineSync()!);

  print('Antum Memilih No $pilih');
  print('\n');

  switch (pilih) {
    case 1:
      penambahan();
      break;
    case 2:
      perkalian();
      break;
    case 3:
      hitungZakat();
      break;
    case 4:
      luasKotak();
      break;
    default:
      print('Tolong Masukan Angka 1 - 4');
  }
}

void penambahan() {
  print('===> Penjumlahan <===');
  stdout.write('Masukan Angka Pertama : ');
  int? angka1 = int.parse(stdin.readLineSync()!);
  stdout.write('Masukan Angka Kedua : ');
  int? angka2 = int.parse(stdin.readLineSync()!);
  stdout.write('$angka1 + $angka2 = ');
  print(angka1 + angka2);
}

void perkalian() {
  print('===> Perkalian <===');
  stdout.write('Masukan Angka Pertama : ');
  int? angka1 = int.parse(stdin.readLineSync()!);
  stdout.write('Masukan Angka Kedua : ');
  int? angka2 = int.parse(stdin.readLineSync()!);
  stdout.write('$angka1 x $angka2 = ');
  print(angka1 * angka2);
}

void luasKotak() {
  print('===> Menghitung Luas Kotak <===');
  stdout.write('Masukan Panjang Kotak : ');
  int? angka1 = int.parse(stdin.readLineSync()!);
  stdout.write('Masukan Lebar Kotak : ');
  int? angka2 = int.parse(stdin.readLineSync()!);
  stdout.write('Masukan Tinggi Kotak : ');
  int? angka3 = int.parse(stdin.readLineSync()!);
  stdout.write('$angka1 x $angka2 x $angka3 = ');
  print(angka1 * angka2 * angka3);
}

void hitungZakat() {
  print('===> Hitung Zakat <===');
  print('Sebelum Membayarkan zakat Pastikan :');
  print('1. Harta mencapai Haul (Mengendap min 1 Tahun)');
  print('2. Harta Mencapai Nisab');
  print('');
  stdout.write('Masukan Harga Emas per-gram : ');
  int? harga1 = int.parse(stdin.readLineSync()!);
  int nisab = harga1 * 85;
  print('Nisab Emas Sebesar : $nisab');
  stdout.write('Masukan Jumlah Harta Antum : ');
  double? harta1 = double.parse(stdin.readLineSync()!);
  print('');
  if (harta1 >= nisab) {
    double bayar = 0.025;
    harta1 *= bayar;
    print('Zakat yang Harus Antum Bayar Sebesar : $harta1');
  } else {
    print('Harta Antum Tidak Wajib Dizakati');
  }
  print('');
}

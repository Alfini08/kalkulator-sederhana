import 'dart:io';

void main() {
  print("Kalkulator Sederhana");
  print("---------------------------------");

  // Meminta pengguna memasukkan dua angka
  print("Masukkan angka pertama: ");
  double angka1 = double.parse(stdin.readLineSync() ?? '0');

  print("Masukkan angka kedua: ");
  double angka2 = double.parse(stdin.readLineSync() ?? '0');

  // Meminta pengguna memilih operasi matematika
  print("Pilih operasi matematika:");
  print("1. Penambahan (+)");
  print("2. Pengurangan (-)");
  print("3. Perkalian (*)");
  print("4. Pembagian (/)");

  String? pilihan = stdin.readLineSync();
  double hasil = 0;

  // Melakukan operasi sesuai dengan pilihan pengguna
  switch (pilihan) {
    case '1':
      hasil = angka1 + angka2;
      break;
    case '2':
      hasil = angka1 - angka2;
      break;
    case '3':
      hasil = angka1 * angka2;
      break;
    case '4':
      if (angka2 != 0) {
        hasil = angka1 / angka2;
      } else {
        print("Error: Pembagian dengan nol tidak diizinkan.");
        return;
      }
      break;
    default:
      print("Pilihan operasi tidak valid.");
      return;
  }

  // Cetak hasil
  print("Hasil operasi: $hasil");
}

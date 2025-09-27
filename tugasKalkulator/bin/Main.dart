import 'dart:io';
import 'kalkulator.dart';

void main() {
  while (true) {
    var kal = kalkulator();

    print('Bilangan ke 1 : ');
    double bil1 = double.parse(stdin.readLineSync()!);

    print('Bilangan ke 2 : ');
    double bil2 = double.parse(stdin.readLineSync()!);

    print('\n Kalkulator');
    print('1. Tambah (+)');
    print('2. Kurang (-)');
    print('3. Bagi (/)');
    print('4. Kali (*)');

    print('Input Operator yang ingin Digunakan : ');
    String? pilihan = stdin.readLineSync();
    double jawab;
    if (pilihan == '1') {
      jawab = kal.tambah(bil1, bil2);
      print('Hasil dari $bil1 + $bil2 = $jawab');
    } else if (pilihan == '2') {
      jawab = kal.kurang(bil1, bil2);
      print('Hasil dari $bil1 - $bil2 = $jawab');
    } else if (pilihan == '3') {
      jawab = kal.bagi(bil1, bil2);
      print('Hasil dari $bil1 / $bil2 = $jawab');
    } else if (pilihan == '4') {
      jawab = kal.kali(bil1, bil2);
      print('Hasil dari $bil1 * $bil2 = $jawab');
    } else {
      print('Pilihan tidak ada, Tolong Pilih Yang benar');
    }
    print('Apakah Anda Ingin Mengulang Kalkulator? (Y/T) : ');
    String? ulang = stdin.readLineSync();
    if (ulang == 't' || ulang == 'T') {
      print('Terima kasih sudah memakai kalkulator!');
      break;
    }
  }
}

import 'dart:io';

void main(){
  // Operator aritmatika
  int a = 10;
  int b = 4;
  print("Hasil dari a + b = ${a+b}");
  print("Hasil dari a - b = ${a-b}");
  print("Hasil dari a * b = ${a*b}");
  print("Hasil dari a / b = ${a/b}");
  print("Hasil dari a ~/ b = ${a~/b}");
  print("Hasil dari a % b = ${a%b}");
  print("Hasil dari -a = ${-a}");
  print("Hasil dari -b = ${-b}");


// operator perbandingan


// operator logika


// operator penugasan
  print("Masukkan angka: ");
  num? number = num.parse(stdin.readLineSync()!);
  print(number);
  print("number : $number");

// operator ternery
  int nilai = 90;
  var hasil = nilai >= 80 ? "Lulus" : "Tidak Lulus";
  print("Hasil Ternery : $hasil");

  String username = "admin";
  String password = "admin123";
  if (username == "admin" && password == "admin123") {
    print("Login Berhasil");
  } else {
    print("Login Gagal");
  }

  // belajar input
  stdout.write("Masukkan nama : ");
  String? nama = stdin.readLineSync();
  print("Nama saya $nama");

}
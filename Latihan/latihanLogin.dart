import 'dart:io';

void main(){
  stdout.write("Masukkan username : ");
  String? username = stdin.readLineSync();
  stdout.write("Masukkan password : ");
  String? password = stdin.readLineSync();
  if (username == "Arridoh" && password == "07352311153") {
    print("Login Berhasil");
  } else {
    print("Login Gagal");
  }
}
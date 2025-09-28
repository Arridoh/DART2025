import 'dart:io';
void main() {
  // Menampilkan pesan untuk meminta pengguna memasukkan skor.
  stdout.write('Masukkan skor ujian (0-100): ');
  int? skor = int.tryParse(stdin.readLineSync()!);

  // Memeriksa apakah skor null atau berada di luar rentang 0-100.
  if (skor == null) {
    print('Error: Skor harus berupa angka.');
    return;
  } else if (skor < 0 || skor > 100) {
    print('Error: Skor harus berada dalam rentang 0 - 100.');
    return;
  }
  // menggunakan switch case untuk menentukan grade berdasarkan skor
  String grade = switch (skor) {
  >= 85 => 'A',
  >= 70 => 'B',
  >= 60 => 'C',
  >= 50 => 'D',
  _ => 'E',
  };

  // menampilkan hasil 
  print('\n--------------------');
  print('Skor Anda: $skor');
  print('Grade Anda: $grade');
  print('--------------------');
}

void main() {
  // Data karyawan
  String nama = "Arridoh"; 
  int jam_kerja = 60; 
  double upah_per_jam = 20000; 
  bool statusKaryawan = true; // true = tetap, false = kontrak
  
  // Menghitung gaji kotor
  double gajiKotor = jam_kerja * upah_per_jam;
  
  double pajak;
  if (statusKaryawan) {
    pajak = gajiKotor * 0.10;
  } else {
    pajak = gajiKotor * 0.05;
  }
  
  // Menghitung gaji bersih
  double gajiBersih = gajiKotor - pajak;
  
  // Menampilkan hasil
  print("Nama Karyawan\t: $nama");
  print("Gaji Kotor\t: Rp.$gajiKotor");
  print("Pajak\t\t: Rp.$pajak");
  print("Gaji Bersih\t: Rp.$gajiBersih");
  
}

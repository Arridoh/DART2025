import 'dart:io';

List<String> pesanan = [];

// Fungsi untuk menampilkan menu utama
void tampilkanMenuUtama() {
  print("===== apa yang ingin anda lakukan? =======");
  print("1. Pesan Makanan");
  print("2. Pesan Minuman");
  print("3. Lihat Pesanan");
  print("4. Exit");
  print("============================================");
  stdout.write("Pilih menu (1-4): ");
}

// Fungsi untuk menampilkan dan memesan makanan
void pesanMakanan() {
  print("\n--- Menu Makanan ---");
  print("1. Nasi Goreng  (Rp 25.000)");
  print("2. Mie Ayam     (Rp 20.000)");
  print("3. Bakso        (Rp 15.000)");
  String? pilihan;
  do {
    stdout.write("Pilih makanan (1-3): ");
    pilihan = stdin.readLineSync();
    switch (pilihan) {
      case '1':
      pesanan.add("Nasi Goreng");
      print("-> Nasi Goreng berhasil ditambahkan.");
      break;
    case '2':
      pesanan.add("Mie Ayam");
      print("-> Mie Ayam berhasil ditambahkan.");
      break;
    case '3':
      pesanan.add("Bakso");
      print("-> Bakso berhasil ditambahkan.");
      break;
    default:
      print("-> Pilihan tidak valid, silakan coba lagi");
    }
  } while (pilihan != '1' && pilihan != '2' && pilihan != '3');
  
}

// Fungsi untuk menampilkan dan memesan minuman
void pesanMinuman() {
  print("\n--- Menu Minuman ---");
  print("1. Es Teh Manis (Rp 5.000)");
  print("2. Kopi Hitam   (Rp 5.000)");
  print("3. Es Jeruk     (Rp 7.000)");
  String? pilihan;
  do {
    stdout.write("Pilih minuman (1-3): ");
    pilihan = stdin.readLineSync();
    switch (pilihan) {
      case '1':
        pesanan.add("Es Teh Manis");
        print("-> Es Teh Manis berhasil ditambahkan.");
        break;
      case '2':
        pesanan.add("Es Jeruk");
        print("-> Es Jeruk berhasil ditambahkan.");
        break;
      case '3':
        pesanan.add("Kopi Hitam");
        print("-> Kopi Hitam berhasil ditambahkan.");
        break;
      default:
        print("-> Pilihan tidak valid, silakan coba lagi");
    }
  } while (pilihan != '1' && pilihan != '2' && pilihan != '3');
}

// Fungsi untuk menampilkan semua pesanan
void tampilkanPesanan() {
  if (pesanan.isEmpty) {
    print("\n!! Anda belum memesan apapun !!\n");
  } else {
    print("\n--- Pesanan Anda ---");
    for (int i = 0; i < pesanan.length; i++) {
      print("${i + 1}. ${pesanan[i]}");
    }
    print("--------------------");
  }
}

void main() {
  print("\n======= Selamat Datang di Resto-Z ========");
  String? pilihan;
  do {
    tampilkanMenuUtama();
    pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        pesanMakanan();
        break;
      case '2':
        pesanMinuman();
        break;
      case '3':
        tampilkanPesanan();
        break;
      case '4':
        break;
      default:
        print("\n!! Pilihan tidak ada di menu, silakan coba lagi !!");
    }
  } while (pilihan != '4'); 
  print("\nTerima kasih telah berkunjung, Sampai jumpa lagi!");
}
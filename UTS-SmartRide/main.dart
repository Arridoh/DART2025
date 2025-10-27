abstract class Transportasi{
  String id;
  String nama;
  double _tarifdasar;
  int kapasitas;

  Transportasi(this.id, this.nama, this._tarifdasar, this.kapasitas);

  double hitungtarif(int JumlahPenumpang);

  double get tarifdasar => _tarifdasar;

  void tampilInfo(){
    print('Informasi Transportasi:');
    print('ID: $id');
    print('Nama: $nama');
    print('Kapasitas : $kapasitas Penumpang');
  }
}

class Taksi extends Transportasi{
  int jarak;

  Taksi(String id,
      String nama,
      double tarifdasar,
      int kapasitas,
      this.jarak
      ) : super(id, nama, tarifdasar, kapasitas);
  
  @override
  double hitungtarif(int JumlahPenumpang) {
    if (JumlahPenumpang > kapasitas) {
      print('Penumpang melebihi kapasitas.');
      return 0;
    }
    return tarifdasar * jarak;
  }
}

class Bus extends Transportasi{
  bool adaWifi;

  Bus(String id,
      String nama,
      double tarifdasar,
      int kapasitas,
      this.adaWifi
      ) : super(id, nama, tarifdasar, kapasitas);
  
  @override
  double hitungtarif(int JumlahPenumpang) {
    if (JumlahPenumpang > kapasitas) {
      print('Penumpang melebihi kapasitas.');
      return 0;
    }
    double biayawifi = adaWifi ? 5000 : 0;
    return tarifdasar * JumlahPenumpang + biayawifi;
  }
}

class Pesawat extends Transportasi{
  String Kelas;

  Pesawat(String id,
      String nama,
      double tarifdasar,
      int kapasitas,
      this.Kelas
      ) : super(id, nama, tarifdasar, kapasitas);
  
  @override
  double hitungtarif(int JumlahPenumpang) {
    if (JumlahPenumpang > kapasitas) {
      print('Penumpang melebihi kapasitas.');
      return 0;
    }
    double tipekelas= Kelas.toLowerCase() == 'bisnis' ? 1.5 : 1.0;
    return tarifdasar * JumlahPenumpang * tipekelas;
  }
}

class pemesanan {
  String idPemesanan;
  String Namapelanggan;
  Transportasi transportasi;
  int JumlahPenumpang;
  double totalTarif;

  pemesanan(this.idPemesanan, this.Namapelanggan, this.transportasi, 
            this.JumlahPenumpang, this.totalTarif);

  void cetakStruk(){
    print('Struk pemesanan:');
    print('ID Pemesanan: $idPemesanan');
    print('Nama Pelanggan: $Namapelanggan');
    transportasi.tampilInfo();
    print('Jumlah Penumpang: $JumlahPenumpang');
    print('Tarif Total: $totalTarif');
  }

  Map <String, dynamic> toMap(){
    return {
      'idPemesanan': idPemesanan,
      'Namapelanggan': Namapelanggan,
      'transportasi': transportasi,
      'JumlahPenumpang': JumlahPenumpang,
      'totalTarif': totalTarif
    };
  }
}

pemesanan buatPemesanan(Transportasi t, String nama, int jumlahPenumpang){
  double totalBiaya = t.hitungtarif(jumlahPenumpang);
  String idPemesanan = 'ID-${DateTime.now().millisecondsSinceEpoch}';
  return pemesanan(idPemesanan, nama, t, jumlahPenumpang, totalBiaya);
}

void tampilSemuaPesanan( List<pemesanan> daftarPemesanan){
  if (daftarPemesanan.isEmpty) {
    print('Belum ada pesanan.');
  } else {
    for (var p in daftarPemesanan) {
      p.cetakStruk();
      print('==============================');
    }
  }
}

void main(){
  print('\nMenginisialisasi Objek Transportasi. . . .');
  Taksi taksi1 = Taksi('T001', 'Taksi Ternate', 3000, 5, 2);
  Bus bus1 = Bus('B-01', 'Bus Jati', 15000, 30, true);
  Pesawat pesawat1 = Pesawat('PS-01', 'Pesawat Ternate', 1000000, 100, 'Bisnis');
  print('\nInisialisasi Selesai.');
  List<pemesanan> daftarPemesanan = [];
  print('\nMembuat Pemesanan. . . .');
  daftarPemesanan.add(buatPemesanan(taksi1, 'Taksi Budi', 3));
  print('Taksi dipesan.');
  daftarPemesanan.add(buatPemesanan(bus1, 'Bus Eko', 20));
  print('Bus dipesan.');
  daftarPemesanan.add(buatPemesanan(pesawat1, 'Pesawat K', 50));
  print('Pesawat dipesan.');

  print('\nMenampilkan Semua Pesanan');
  tampilSemuaPesanan(daftarPemesanan);
}
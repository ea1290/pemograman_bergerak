class RekeningBank {
  String _nomorRekening;
  double _saldo;

// konstraktor
  RekeningBank(this._nomorRekening, this._saldo);

  // Getter untuk membaca nilai variable private
  String get nomorRekening => _nomorRekening;
  double get saldo => _saldo;

  // Setter dengan validasi nilai
  set nomorRekening(String value){
    if(value.isNotEmpty && value.length > 6){
       _nomorRekening = value;
    }
  }

  set saldo(double value){
    if(value >= 0){
      _saldo = value;
    }else{
      print("Error : Saldo Tidak Boleh Negatif!");
    }
  }
   // Method tambahan untuk setor uang
   void setor(double jumlah){
    if (jumlah > 0){
      _saldo += jumlah;
      print("Setor sebesar Rp$jumlah berhasil. Saldo saat ini : Rp$_saldo");
    }
   }

   // Method tambahan untuk tarik uang\
   void tarik(double jumlah){
    if (jumlah > 0 && jumlah <= _saldo){
      _saldo -= jumlah;
      print("Penarikan Rp$jumlah berhasil. Sisa saldo : Rp$_saldo");
    }else {
      print("Penarikan gagal : Saldo Tidak Mencukupi!");
    }
   }



}

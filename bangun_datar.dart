// Abstract class sebagai blue print bentuk geometri
abstract class BangunDatar{
  double hitungLuas();
  double hitungKeliling();
}

// Subclass Persegi panjang yang mengimplementasikan BangunDatar
class PersegiPanjang extends BangunDatar{
  double panjang;
  double lebar;
  persegiPanjang(this.panjang, this.lebar);

@override
  double hitungLuas(){
    return panjang * lebar;
  }
@override
  double hitungKeliling(){
    return 2 * (panjang + lebar);
  }
}

// Subclass Lingkaran yang mengimplementasikan BangunDatar
class Lingkaran extends BangunDatar{
  double jariJari;
  Lingkaran(this.jariJari);

@override
  double hitungKeliling(){
    return 2* 3.14 *jariJari;
  }

@override
  double hitungLuas(){
    return 3.14 *jariJari * jariJari;
  }

}

void main(){
  
  pesergiPanjang persegi = persegiPanjang(5.0, 3.0);
  print("=== Persegi Panjang ===");
  print("Luas : ${persegi.hitungLuas(){}}")
}
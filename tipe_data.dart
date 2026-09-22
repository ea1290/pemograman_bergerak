void main(){
  var x = 10, y = "Hello", z = 3.14, b = true, l = [2,3,5,7], o = {"name ":"John", "age" : 5};

  // mencetak tipe data otomatis yang terdeteksi oleh dart
  print("Tipe data x: ${x.runtimeType}"); // int [2,3]
  print("Tipe data y: ${y.runtimeType}"); // String [2,3]
  print("Tipe data z: ${z.runtimeType}"); // double [2,3]
  print("Tipe data b: ${b.runtimeType}");
  print("Tipe data l: ${l.runtimeType}");
  print("Tipe data o: ${o.runtimeType}");
  y = "Hello World";
  print("Tipe data y: ${y.runtimeType}");
  
}
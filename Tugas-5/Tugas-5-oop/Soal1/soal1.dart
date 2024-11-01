class segitiga{
  double setengah;
  double alas;
  double tinggi;

  segitiga (this.setengah,this.alas, this.tinggi);

double luassegitiga(){
    var luas = setengah * alas * tinggi;
    return luas;
  }
}
void main(){
segitiga  segitiga1 = segitiga(0.5, 20, 30);

print(segitiga1.luassegitiga());
}
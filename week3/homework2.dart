import 'dart:io';

void main(List<String> args) {
    String? choose;
    int a;
    int b;

    while(true){
      menu();
      choose =  stdin.readLineSync()!;
      
      if(choose == "0") {
        print("Çıkış yaptınız!");
        break;
      }else if(int.parse(choose) > 4 || int.parse(choose) < 0){
        print("Lütfen geçerli bir seçim yapınız!!!");
        continue;
      }

      stdout.write("Lütfen sayı giriniz: ");
      a = int.parse(stdin.readLineSync()!);
      stdout.write("Lütfen sayı giriniz: ");
      b = int.parse(stdin.readLineSync()!);

      handle(choose,a,b);
    }
}

void handle(String choose,int a, int b) {
  switch (choose) {
    case "1":
      sum(a,b);
      break;
    case "2":
      extraction(a,b);
      break;
    case "3":
      divide(a,b);
      break;
    case "4":
      multiplication(a,b);
      break;
    default:
      break;
  }
}

void divide(int a, int b) {
  b != 0 ? print("İşlem sonucu: $a / $b = ${a/b}"):print("Payda sıfır olamaz!!");
}

void multiplication(int a, int b) {
  print("İşlem sonucu: $a * $b = ${a*b}");
}

void extraction(int a, int b) {
  print("İşlem sonucu: $a - $b = ${a-b}");
}

void sum(int a,int b) {
  print("İşlem sonucu: $a + $b = ${a+b}");
}

void menu() {
  stdout.write("\nLütfen gerçekleştirmek istediğiniz işlemi seçiniz\n"+
  "=> Toplama (1)\n"+
  "=> Çıkarma (2)\n"+
  "=> Bölme (3)\n"+
  "=> Çarpma (4)\n"+
  "Seçiminiz: ");
} 
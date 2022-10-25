import 'dart:io';

void main(List<String> args) {
  stdout.write("Oluşturmak istediğiniz listenin eleman sayısını giriniz: ");
  int capacity = int.parse(stdin.readLineSync()!);
  List<int> list = <int>[];

  createList(capacity, list);
  stdout.write("\nOluşturulan liste => ");
  print(list);
  stdout.write("\nKüçükten büyüğe doğru => ");
  orderByAsc(list);
  stdout.write("Büyükten küçüğe doğru => ");
  orderByDesc(list);
}

void orderByDesc(List<int> list) {
  list.sort((a, b) => b.compareTo(a));
  print(list);
}

void orderByAsc(List<int> list) {
  list.sort();
  print(list);
}

void createList(int capacity,List<int> list){
   for (var i = 0; i < capacity; i++) {
    stdout.write("${i+1}. sayıyı giriniz: ");
    list.add(int.parse(stdin.readLineSync()!));
  }
}


//======================================================
// //No.1
// void main() {
//   print(range(1, 10));
// }

// range(starNum, finisNum) {
//   List<int> range = [
//     0,
//     1,
//     2,
//     3,
//     4,
//     5,
//     6,
//     7,
//     8,
//     9,
//     10,
//     11,
//     12,
//     13,
//     14,
//     15,
//     16,
//     17,
//     18
//   ];
//   print(range.getRange(1, 10));
//   print(range.getRange(11, 18));
// }
//======================================================
//No.2
// void main(List<String> args) {
//   print(rangeWithStep(1, 12, 2));
//   print(rangeWithStep(11, 1, 2));
//   print(rangeWithStep(20, 12, 2));
//   print(rangeWithStep(20, 20, 2));
// }

// rangeWithStep(startNum, finishNum, step) {
//   var rangeArr = [];
//   if (startNum > finishNum) {
//     var currentNum = startNum;
//     for (var i = 0; currentNum >= finishNum; i++) {
//       rangeArr.add(currentNum);
//       currentNum -= step;
//     }
//   } else if (startNum < finishNum) {
//     var currentNum = startNum;
//     for (var i = 0; currentNum <= finishNum; i++) {
//       rangeArr.add(currentNum);
//       currentNum += step;
//     }
//   } else {
//     return 1;
//   }
//   return rangeArr;
// }

//======================================================
// // //No.3
void main() {
  dataHalding();
}

dataHalding() {
  var input = [
    ["001", "Roman Alamsya", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["003", "Winona", "Anbon", "25/012/1965", "Memasak"],
    ["004", "Bintang Senjaya", "Martapura", "6/4/1970", "Berkebun"]
  ];
  String nomorid = "Nomor id : ";
  String namalengkap = "Nama Lengkap : ";
  String ttl = "TTL : ";
  String hobi = "Hobi : ";

  print(nomorid + input[00][00]);
  print(namalengkap + input[00][01]);
  print(ttl + input[00][02] + input[00][03]);
  print(hobi + input[00][04]);

  print(nomorid + input[01][01]);
  print(namalengkap + input[01][01]);
  print(ttl + input[01][02] + input[01][03]);
  print(hobi + input[01][04]);

  print(nomorid + input[02][00]);
  print(namalengkap + input[02][01]);
  print(ttl + input[02][02] + input[00][03]);
  print(hobi + input[02][04]);

  print(nomorid + input[03][00]);
  print(namalengkap + input[03][01]);
  print(ttl + input[03][02] + input[00][03]);
  print(hobi + input[03][04]);
}

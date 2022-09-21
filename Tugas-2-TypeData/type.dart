//============================================================================
//no. 1
// void main(List<String> args) {
//   var second = 'is';
//   var third = 'awesome';
//   var fourth = 'and';
//   var fifth = 'I';
//   var sixth = 'love';
//   var seventh = 'it!';

//   print(second +
//       " " +
//       third +
//       " " +
//       fourth +
//       " " +
//       fifth +

//       " " +
//       sixth +
//       " " +
//       seventh);
// }

//=============================================================================
// no 2
// void main(List<String> args) {
//   var sentence = "I am going to be Flutter Developer";
//   var FirstWord = sentence[0];
//   var SecondWord = sentence[2] + sentence[3];
//   var thirdWord =
//       sentence[5] + sentence[6] + sentence[7] + sentence[8] + sentence[9];
//   var fourthWord = sentence[11] + sentence[12]; // lakukan sendiri
//   var fifthWord = sentence[14] + sentence[15];
//   var sixthWord = sentence[17] +
//       sentence[18] +
//       sentence[19] +
//       sentence[20] +
//       sentence[21] +
//       sentence[22] +
//       sentence[23];
//   var seventhWord = sentence[25] +
//       sentence[26] +
//       sentence[27] +
//       sentence[28] +
//       sentence[29] +
//       sentence[30] +
//       sentence[31] +
//       sentence[32] +
//       sentence[33];
//   print('First Word: ' + FirstWord);
//   print('SecondWord: ' + SecondWord);
//   print('Third Word: ' + thirdWord);
//   print('Fourth Word: ' + fourthWord);
//   print('Fifth Word: ' + fifthWord);
//   print('Sixth Word: ' + sixthWord);
//   print('Seventh Word: ' + seventhWord);
// }
//=============================================================================
// no 3
// import 'dart:io';

// void main(List<String> args) {
//   print("masukan nama depan : ");
//   var inputText = stdin.readLineSync();
//   print("masukan nama belakang : ");
//   var inputText2 = stdin.readLineSync();
//   print("nama lengkap anda adalah : $inputText" + " $inputText2");
// }
//=============================================================================
// no 4
void main() {
  int a = 5;
  int b = 10;
  //perkalian
  int perkalian = a * b;
  //pembagian dengan hasil pecahan
  double pembagian = a / b;
  //penjumlahan
  int penjumlahan = a + b;
  //pengurangan
  int pengurangan = a - b;

  print(
      "Perkalian = $perkalian\nPembagian = $pembagian\nPenjumlahan = $penjumlahan\nPengurangan = $pengurangan");
}

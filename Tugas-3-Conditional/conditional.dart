//======================================================================
//no. 1
// import 'dart:io';
// void main(List<String> args) {
//   print("Apakah anda ingin menginstal Aplikasi ini(y/t): ");
//   var inputText = stdin.readLineSync();
//   if (inputText == "y") {
//     print("anda akan menginstall aplikasi dart");
//   } else {
//     print("aborted");
//   }
// }
//======================================================================
//no. 2
// import 'dart:io';

// void main() {
//   print("Masukkan Nama : ");
//   var nama = stdin.readLineSync();
//   print("Masukkan Peran mu");
//   var peran = stdin.readLineSync();
//   if (nama == "John") {
//     print("Halo John, Pilih peranmu untuk memulai game");
//   } else if (nama == "Jane" || peran == "Penyihir") {
//     print("Selamat datang di Dunia Werewolf, Jane " +
//         "Halo Penyihir Jane, kamu dapat melihat siapa yang menjadi werewolf");
//   } else if (nama == "Jenita" || peran == "Guard") {
//     print("Selamat datang di Dunia Werewolf, Jenita " +
//         "Halo Guard Jenita, kamu akan membantu melindungi temanmu dari serangan werewolf");
//   } else if (nama == "Junaedi" || peran == "Werewolf") {
//     print("Selamat datang di Dunia Werewolf Junaedi" +
//         "Halo Werewolf Junaedi, Kamu akan memakan mangsa setiap malam!");
//   } else {
//     print("semua Nama harus diisi!");
//   }
// }

//======================================================================
//no. 3
// import 'dart:io';

// void main() {
//   print("Masukkan Hari : ");
//   var Hari = stdin.readLineSync();

//   switch (Hari) {
//     case "Senin":
//       {
//         print(
//             "Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
//         break;
//       }
//     case "Selasa":
//       {
//         print(
//             "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
//         break;
//       }
//     case "Rabu":
//       {
//         print(
//             "Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
//         break;
//       }
//     case "Kamis":
//       {
//         print(
//             "Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
//         break;
//       }
//     case "Jumat":
//       {
//         print("Hidup tak selamanya tentang pacar.");
//         break;
//       }
//     case "Sabtu":
//       {
//         print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
//         break;
//       }
//     case "Minggu":
//       {
//         print(
//             "Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
//         break;
//       }
//   }
// }
//======================================================================
//no. 4
import 'dart:io';

void main() {
  var Hari = 21;
  var Bulan = 1;
  var Tahun = 1945;

  switch (Hari) {
    case 1:
      {
        print("1");
        break;
      }
    case 2:
      {
        print("2");
        break;
      }
    case 3:
      {
        print("3");
        break;
      }
    case 4:
      {
        print("4");
        break;
      }
    case 5:
      {
        print("5");
        break;
      }
    case 6:
      {
        print("6");
        break;
      }
    case 7:
      {
        print("7");
        break;
      }
    case 8:
      {
        print("8");
        break;
      }
    case 9:
      {
        print("9");
        break;
      }
    case 10:
      {
        print("10");
        break;
      }
    case 11:
      {
        print("11");
        break;
      }
    case 12:
      {
        print("12");
        break;
      }
    case 13:
      {
        print("13");
        break;
      }
    case 14:
      {
        print("14");
        break;
      }
    case 15:
      {
        print("15");
        break;
      }
    case 16:
      {
        print("16");
        break;
      }
    case 17:
      {
        print("17");
        break;
      }
    case 18:
      {
        print("18");
        break;
      }
    case 19:
      {
        print("19");
        break;
      }
    case 20:
      {
        print("20");
        break;
      }
    case 21:
      {
        print("21");
        break;
      }
    case 22:
      {
        print("22");
        break;
      }
    case 23:
      {
        print("23");
        break;
      }
    case 24:
      {
        print("24");
        break;
      }
    case 25:
      {
        print("25");
        break;
      }
    case 26:
      {
        print("26");
        break;
      }
    case 27:
      {
        print("27");
        break;
      }
    case 28:
      {
        print("28");
        break;
      }
    case 29:
      {
        print("29");
        break;
      }
    case 30:
      {
        print("30");
        break;
      }
    case 31:
      {
        print("31");
        break;
      }
  }
  switch (Bulan) {
    case 1:
      {
        print("Januari");
        break;
      }
    case 2:
      {
        print("Februari");
        break;
      }
    case 3:
      {
        print("Maret");
        break;
      }
    case 4:
      {
        print("April");
        break;
      }
    case 5:
      {
        print("Mei");
        break;
      }
    case 6:
      {
        print("Juni");
        break;
      }
    case 7:
      {
        print("Juli");
        break;
      }
    case 8:
      {
        print("Agustus");
        break;
      }
    case 9:
      {
        print("September");
        break;
      }
    case 10:
      {
        print("Okteber");
        break;
      }
    case 11:
      {
        print("November");
        break;
      }
    case 12:
      {
        print("Desember");
        break;
      }
  }
  switch (Tahun) {
    case 1900:
      {
        print("1900");
        break;
      }
    case 1910:
      {
        print("1910");
        break;
      }
    case 1920:
      {
        print("1920");
        break;
      }
    case 1930:
      {
        print("1930");
        break;
      }
    case 1940:
      {
        print("1940");
        break;
      }
    case 1945:
      {
        print("1945");
        break;
      }
    case 1950:
      {
        print("1950");
        break;
      }
    case 1960:
      {
        print("1960");
        break;
      }
    case 1970:
      {
        print("1970");
        break;
      }
    case 1980:
      {
        print("1980");
        break;
      }
    case 1990:
      {
        print("1990");
        break;
      }
    case 2000:
      {
        print("2000");
        break;
      }
    case 2100:
      {
        print("2100");
        break;
      }
    case 2200:
      {
        print("2200");
        break;
      }
  }
}

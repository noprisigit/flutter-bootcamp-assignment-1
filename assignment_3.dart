void main() {
  String case1 = "(())";
  String case2 = "()()";
  String case3 = "()()(";
  String case4 = "(";
  String case5 = "))((";
  String case6 = "{()())}";

  print("Bracket case1 -> ${isBracketValidOrNot(case1)}");
  print("Bracket case2 -> ${isBracketValidOrNot(case2)}");
  print("Bracket case3 -> ${isBracketValidOrNot(case3)}");
  print("Bracket case4 -> ${isBracketValidOrNot(case4)}");
  print("Bracket case5 -> ${isBracketValidOrNot(case5)}");
  print("Bracket case6 -> ${isBracketValidOrNot(case6)}");
}

/**
 * 
 * function ini digunakan untuk melakukan pengecekan apakah sebuah string mengandung bracker "()"
 * memiliki parameter berupa stringBracket
 * terlebih dahulu dilakukan pengecekan apakah panjang string parameter yang dikirimkan berjumlah ganjil
 * jika iya, maka akan mengembalikan nilai false
 * jika tidak maka lanjut ke kondisi berikutnya
 * yaitu mengecek apakah pada string parameter tersebut contains "()"
 * jika iya, maka akan mengembalikan nilai true
 * jika tidak, maka akan mengembalikan nilai false
 * 
 */
bool isBracketValidOrNot(String stringBracket) {
  if (stringBracket.length % 2 != 0) {
    return false;
  }

  return stringBracket.contains("()") ? true : false;
}

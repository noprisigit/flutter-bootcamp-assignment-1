void main() {
  fizzBuzz(15);
}

/**
 * function fizzBuzz ini menerima parameter n untuk banyaknya perulangan yang akan dilakukan
 * lalu, dilakukan perulangan sampai dengan batas ke n
 * jika nilai ke-i habis dibagi 3 dan habis dibagi 5 maka akan mencetak tulisan "fizzbuzz"
 * tapi jika nilai ke-i hanya habis dibagi 3 maka akan mencetak tulisan "fizz"
 * tapi jika nilai ke-i hanya habis dibagi 5 maka akan mencetak tulisan "buzz"
 * selain dari itu akan mencetak nilai ke-i
 */
void fizzBuzz(int n) {
  for (int i = 1; i <= n; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("fizzbuzz");
    } else if (i % 3 == 0) {
      print("fizz");
    } else if (i % 5 == 0) {
      print("buzz");
    } else {
      print(i);
    }
  }
}

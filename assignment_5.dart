void main() {
  print("fibonacci 3 : ${fibonacciUsingLoop(3)}");
  print("fibonacci 4 : ${fibonacciUsingLoop(4)}");
  print("fibonacci 5 : ${fibonacciUsingLoop(5)}");
  print("fibonacci 10 : ${fibonacciUsingLoop(10)}");
  print("fibonacci 100 : ${fibonacciUsingLoop(100)}");

  print("fibonacci 3 : ${fibonacciUsingRecursice(3)}");
  print("fibonacci 4 : ${fibonacciUsingRecursice(4)}");
  print("fibonacci 5 : ${fibonacciUsingRecursice(5)}");
  print("fibonacci 10 : ${fibonacciUsingRecursice(10)}");
  print("fibonacci 100 : ${fibonacciUsingRecursice(100)}");
}

/**
 * 
 * function ini digunakan untuk mencetak nilai fibonacci menggunakan looping
 * menerima paramater n value
 * jika nilai n lebih kecil sama dengan 0, maka return -1
 * init nilai sebelumnya = 0;
 * init nilai sekarang = 1;
 * melakukan perulangan mulai dari index ke 2 sampai dengan sebanyak n
 * menggunakan variabel tambahan untuk menampung penjumlahan nilai sebelumnya dan nilai sekarang
 * lalu, nilai sebelumnya diisi dengan nilai sekarang'
 * kemudian, nilai sekarang diisi dengan nilai dari hasil penjumlahan
 * dan mengembalikan nilai sekarang
 * 
 */
int fibonacciUsingLoop(int n) {
  if (n <= 0) {
    return -1;
  }

  int previous = 0;
  int current = 1;

  for (int i = 2; i <= n; i++) {
    int nextValue = previous + current;
    previous = current;
    current = nextValue;
  }

  return current;
}

/**
 * 
 * function ini digunakan untuk mencetak nilai fibonacci menggunakan looping
 * menerima paramater n value
 * jika nilai n lebih kecil sama dengan 0, maka return -1
 * jika nilai n == 1 atau nilai n == 2 maka return nilai 1
 * kemudian mengembalikan nilai dari function recursiveFibonacci
 * 
 */
int fibonacciUsingRecursice(int n) {
  if (n <= 0) {
    return -1;
  }

  if (n == 1 || n == 2) {
    return 1;
  }

  return recursiveFibonacci(n, 1, 1);
}

/**
 * 
 * function ini akan memproses parameter untuk menghasilkan nilai fibonacci
 * menerima parameter n, nilai sekarang, dan nilai selanjutnya
 * jika n lebih kecil sama dengan 2 maka akan mengembalikan nilai fibonacci dari variabel next
 * jika tidak melakukan perulangan dengan memanggil dirinya sendiri
 * nilai n dikurangi 1, parameter current akan menerima nilai dari variabel next
 * dan nilai parameter next akan didapatkan dari penjumlahan variabel current dan next
 */
int recursiveFibonacci(int n, int curr, int next) {
  if (n <= 2) {
    return next;
  }

  return recursiveFibonacci(n - 1, next, curr + next);
}

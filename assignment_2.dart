void main() {
  print(removeDuplication([1, 2, 5, 3, 4, 4, 4, 4, 5, 6, 6, 6, 6]));
}

/**
 * 
 * function ini digunakan untuk menghapus duplikasi angka pada sebuah List<int>
 * List<int> yang dikirimkan terlebih dahulu akan di sort sehingga nilai dari List<int> tersebut menjadi terurut
 * Kemudian menyiapkan sebuah List<int> baru untuk menampung hasil element yang tidak duplikat
 * kemudian dilakukan perulangan sebanyak data yang terdapat pada List<int> parameter
 * lalu tiap elemen dilakukan pengecekan jika pada List<int> baru belum memiliki elemen yang ada pada List<int> parameter
 * maka elemen tersebut akan diisikan ke dalam List<int> yang baru
 * 
 */
List<int> removeDuplication(List<int> array) {
  List<int> newArray = [];

  [...array]
    ..sort()
    ..forEach((element) {
      if (!newArray.contains(element)) {
        newArray.add(element);
      }
    });

  return newArray;
}

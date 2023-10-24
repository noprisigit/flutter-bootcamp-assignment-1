void main() {
  print(breakTheRecordForMinMaxRecord(9, [10, 5, 20, 20, 4, 5, 2, 25, 1]));
  print(breakTheRecordForMinMaxRecord(8, [4, 2, 3, 1, 4, 3, 5, 6]));
  print(breakTheRecordForMinMaxRecord(
      10, [30, 25, 90, 85, 40, 10, 45, 65, 100, 105]));

  print(breakTheRecordForMinMaxValue(9, [10, 5, 20, 20, 4, 5, 2, 25, 1]));
  print(breakTheRecordForMinMaxValue(8, [4, 2, 3, 1, 4, 3, 5, 6]));
  print(breakTheRecordForMinMaxValue(
      10, [30, 25, 90, 85, 40, 10, 45, 65, 100, 105]));
}

/**
 * 
 * function ini digunakan untuk mencari banyaknya highest score dan lowest score dalam sebuah pertandingan
 * menerima parameter n game dan List<int> game records
 * init variable highestScore = 0;
 * init variable lowestScore dengan nilai double.infinity;
 * init maxRecord = -1; for starting the game
 * init minRecord = -1; for starting the game
 * melakukan perulangan sebanyak data pada List<int> gameRecords
 * melakukan pengecekan kondisi tiap elemen
 * untuk highest score, jika nilai element lebih besar dari highestScore 
 * maka nilai dari highestScore diisi nilai dari element dan increment maxRecord dengan 1
 * untuk lowest score, jika nilai element lebih kecil dari lowestScore
 * maka niai dari lowestScore diisi nilai dari element dan increment minRecord dengan 1
 * 
 */
List breakTheRecordForMinMaxRecord(int nGame, List<int> gameRecords) {
  var highestScore = 0;
  var lowestScore = double.infinity;

  var maxRecord = -1;
  var minRecord = -1;

  gameRecords.forEach((element) {
    if (element > highestScore) {
      highestScore = element;
      maxRecord += 1;
    }

    if (element < lowestScore) {
      lowestScore = element.toDouble();
      minRecord += 1;
    }
  });

  return [maxRecord, minRecord];
}

/**
 * 
 * function ini digunakan untuk mencari nilai highest score dan lowest score dalam sebuah pertandingan
 * menerima parameter n game dan List<int> game records
 * init variable highestScore = 0;
 * init variable lowestScore dengan nilai double.infinity;
 * melakukan perulangan sebanyak data pada List<int> gameRecords
 * melakukan pengecekan kondisi tiap elemen
 * untuk highest score, jika nilai element lebih besar dari highestScore 
 * maka nilai dari highestScore diisi nilai dari element
 * untuk lowest score, jika nilai element lebih kecil dari lowestScore
 * maka niai dari lowestScore diisi nilai dari element
 * 
 */
List breakTheRecordForMinMaxValue(int nGame, List<int> gameRecords) {
  var maximum = 0;
  var minimum = double.infinity;

  gameRecords.forEach((element) {
    if (element > maximum) {
      maximum = element;
    }

    if (element < minimum) {
      minimum = element.toDouble();
    }
  });

  return [maximum, minimum.toInt()];
}

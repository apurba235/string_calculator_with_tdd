class StringCalculator {
  int add(String numbers) {
    /// Handle empty string
    if (numbers.isEmpty) return 0;

    /// Handle single number
    final partsOfNumber = numbers.split(',');
    if (partsOfNumber.length == 1) {
      return int.parse(partsOfNumber[0]);
    }

    return int.parse(partsOfNumber[0]) + int.parse(partsOfNumber[1]);
  }
}

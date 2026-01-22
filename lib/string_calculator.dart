class StringCalculator {
  int add(String numbers) {
    /// Handle empty string
    if (numbers.isEmpty) return 0;

    /// Handle single number
    return numbers
        .split(',')
        .map(int.parse)
        .reduce((a, b) => a + b);
  }
}

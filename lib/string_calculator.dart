class StringCalculator {
  int add(String numbers) {
    /// Handle empty string
    if (numbers.isEmpty) return 0;
    return int.parse(numbers);
  }
}

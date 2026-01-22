class StringCalculator {
  int add(String numbers) {
    /// Handle empty string
    if (numbers.isEmpty) return 0;

    /// Handle single number
    final workingNumbers = numbers.replaceAll('\n', ',').split(',');
    return workingNumbers.map(int.parse).reduce((a, b) => a + b);
  }
}

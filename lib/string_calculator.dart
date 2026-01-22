class StringCalculator {
  int add(String numbers) {
    /// Handle empty string
    if (numbers.isEmpty) return 0;


    String delimiter = ',';
    String workingNumber = numbers;

    if (numbers.startsWith('//')) {
      delimiter = numbers[2];
      workingNumber = numbers.substring(4);
    }

    workingNumber = workingNumber.replaceAll('\n', delimiter);

    return workingNumber.split(delimiter).map(int.parse).reduce((a, b) => a + b);
  }
}

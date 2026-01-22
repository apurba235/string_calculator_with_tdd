class StringCalculator {
  int add(String numbers) {
    switch (numbers.length) {
      case 0:
        return 0;
      default:
        {
          String delimiter = ',';
          String workingNumber = numbers;

          if (numbers.startsWith('//')) {
            delimiter = numbers[2];
            workingNumber = numbers.substring(4);
          }

          workingNumber = workingNumber.replaceAll('\n', delimiter);

          final values = workingNumber.split(delimiter).map(int.parse).toList();
          final negatives = values.where((e) => e < 0).toList();

          if (negatives.isNotEmpty) {
            throw Exception('Negative numbers not allowed: ${negatives.join(', ')}');
          }

          return values.reduce((a, b) => a + b);
        }
    }
  }
}

double calculate(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) {
        throw ArgumentError('Division by zero is not allowed.');
      }
      return num1 / num2;
    case '%':
      return num1 % num2;
    default:
      throw ArgumentError('Invalid operator: $operator');
  }
}

// Example usage
void main() {
  double result = calculate(5, 3, '+');
  print(result); // Output: 8.0

  result = calculate(10, 2, '-');
  print(result); // Output: 8.0

  result = calculate(4, 5, '*');
  print(result); // Output: 20.0

  result = calculate(15, 3, '/');
  print(result); // Output: 5.0

  try {
    result = calculate(7, 0, '/');
    print(result); // This will throw an ArgumentError
  } catch (e) {
    print(e.toString());
  }
}
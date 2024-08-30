bool isPalindrome(String input) {
  // Convert the input to lowercase and remove non-alphanumeric characters
  String cleanedInput = input.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

  // Check if the cleaned input is equal to its reverse
  return cleanedInput == cleanedInput.split('').reversed.join('');
}

void main() {
  // Test cases for strings
  String string1 = "Racecar";
  String string2 = "A man, a plan, a canal, Panama!";
  String string3 = "Not a palindrome";

  print("Is \"$string1\" a palindrome? ${isPalindrome(string1)}");
  print("Is \"$string2\" a palindrome? ${isPalindrome(string2)}");
  print("Is \"$string3\" a palindrome? ${isPalindrome(string3)}");

  // Test cases for numbers
  int number1 = 121;
  int number2 = 12321;
  int number3 = 1001;

  print("Is $number1 a palindrome? ${isPalindrome(number1.toString())}");
  print("Is $number2 a palindrome? ${isPalindrome(number2.toString())}");
  print("Is $number3 a palindrome? ${isPalindrome(number3.toString())}");
}
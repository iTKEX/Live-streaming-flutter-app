import 'dart:math';

class RandomUser {
  static String generateID() {
    final random = Random();
    return 'user_${random.nextInt(100000)}'; // Generates a user ID like user_12345
  }
}

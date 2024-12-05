```dart
import 'dart:async';

Future<void> main() async {
  final completer = Completer<int>();

  // Simulate an asynchronous operation that might fail
  Future.delayed(Duration(seconds: 2), () {
    // This operation can either succeed or fail randomly
    final shouldFail = false; // Change this to true to simulate failure
    if (shouldFail) {
      completer.completeError(Exception('Operation failed'));
    } else {
      completer.complete(42);
    }
  });

  try {
    final result = await completer.future;
    print('Result: $result');
  } catch (e) {
    // Handle the exception gracefully
    print('Error: $e');
  }
}
```
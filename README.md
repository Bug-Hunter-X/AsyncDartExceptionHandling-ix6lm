# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart asynchronous programming:  unhandled exceptions in `Future`s. The `bug.dart` file shows a scenario where an asynchronous operation may fail, and the lack of proper error handling can lead to unexpected behavior.  The solution (`bugSolution.dart`) provides the correct way to handle potential exceptions.

**Problem:** The original code lacks a proper `catch` block to handle the `Exception` that might be thrown by the asynchronous operation. This can lead to the program silently failing or throwing an unhandled exception.

**Solution:** The solution file shows how to use a `try-catch` block to gracefully handle potential exceptions and prevent the program from crashing.
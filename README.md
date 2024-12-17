# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart:  inadequate exception handling within asynchronous functions. The `fetchData` function fetches data from a remote API, but its error handling could be improved.

## Bug

The provided `bug.dart` file contains a function that attempts to fetch data asynchronously. While a `try-catch` block is present to handle potential exceptions, the `rethrow` statement may result in unhandled exceptions if the calling function doesn't handle them.

## Solution

The `bugSolution.dart` file offers improved exception handling. It demonstrates the use of a `try-catch` block in the `main` function to gracefully handle any exceptions thrown by `fetchData`.  This prevents the application from crashing and allows for more informative error messages.

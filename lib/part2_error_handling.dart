// example_error.dart

Future<String> delayedError() {
  return Future.delayed(
    const Duration(seconds: 2),
    () {
      throw Exception('Something went wrong after 2 seconds!');
    },
  );
}

Future<void> main() async {
  print('Waiting for result...');

  try {
    final result = await delayedError();
    print(result); // This line won't be reached if an error occurs
  } catch (e) {
    print('Caught an error: $e');
  }
}
// example.dart

Future<String> delayedMessage() {
  return Future.delayed(
    const Duration(seconds: 2),
    () => 'Hello after 2 seconds!',
  );
}

Future<void> main() async {
  print('Waiting for message...');
  final message = await delayedMessage();
  print(message);
}

// Emits 1–5 with a 1-second delay between each value.
Stream<int> numberStream() async* {
  for (var i = 1; i <= 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

void main() {
  // Listen to the stream and print each value received.
  numberStream().listen(
    (value) => print('Received: $value'),
    onDone: () => print('Done!'),
  );
}

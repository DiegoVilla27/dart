/// Starts the execution of the program by subscribing to the `emitNumbers`
/// stream. It listens for integer values emitted every second and prints
/// each value to the console until the stream completes after emitting
/// 10 values.
void main() {

  emitNumbers().listen((int value) {
    print(value);
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(Duration(seconds: 1), (value) {
    return value;
  }).take(10);
}
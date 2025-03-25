/// Demonstrates the use of a Map in Dart to store and retrieve key-value pairs.
///
/// A Map named 'edades' is created with names as keys and ages as values.
/// The age of 'Alice' is retrieved and printed to the console.
void main() {
  Map<String, int> edades = {'Alice': 25, 'Bob': 30, 'Charlie': 28};
  print(edades['Alice']);
}

/// Demonstrates the use of a Set in Dart to store a collection of unique strings.
///
/// This example creates a Set of fruit names, including a duplicate entry.
/// The Set automatically removes the duplicate, ensuring all elements are unique.
/// The resulting Set is printed to the console.
void main() {
  Set<String> frutas = {'Manzana', 'Banana', 'Uva', 'Manzana'};
  print(frutas);
}

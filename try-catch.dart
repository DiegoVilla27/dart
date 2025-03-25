/// This function demonstrates the use of asynchronous operations and error
/// handling in Dart. It attempts to fetch a URL using the `getUrl` function,
/// which simulates a delay and throws a `NoGoogleAllowedException` for Google
/// URLs. The exception is caught and handled, printing a specific message for
/// the `NoGoogleAllowedException` and a generic error message for other
/// exceptions. The `finally` block ensures that a completion message is printed
/// regardless of whether an exception occurred.
void main() async {
  print('Initializing...');

  try {
    String url = await getUrl('google.com');
    print(url);
  } on NoGoogleAllowedException catch (err) {
    print(err.toString());
  } catch (err) {
    print('Error: $err');
  } finally {
    print('Finished.');
  }
}

Future<String> getUrl(String url) async {
  await Future.delayed(Duration(seconds: 5));
  throw NoGoogleAllowedException();
}

/// Exception thrown when a Google URL is encountered, which is not allowed.
///
/// This exception should be used to enforce rules against using Google URLs
/// in certain contexts where they are prohibited.
class NoGoogleAllowedException implements Exception {
  NoGoogleAllowedException();

  @override
  String toString() => "The URL is not allowed because it's a Google URL!";
}

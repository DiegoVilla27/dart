/// Demonstrates the asynchronous nature of Dart's Future by calling the
/// `getUrl` function with a URL and printing the result once the Future
/// completes. The program prints messages to indicate the sequence of
/// execution, highlighting that the main function continues execution
/// while waiting for the Future to resolve.
void main() {
  print('Initializing...');

  getUrl('google.com').then((res) {
    print(res);
    print('Finished.');
  });

  print('This shows that Future is async.');
}

Future<String> getUrl(String url) async {
  await Future.delayed(Duration(seconds: 5));
  return 'Got the URL!: $url';
}

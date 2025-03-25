/// Demonstrates asynchronous behavior in Dart using Future.
///
/// The `main` function initializes the process and calls `getUrl` to simulate
/// fetching a URL asynchronously. The `getUrl` function returns a Future that
/// completes after a delay, simulating a network request. The program prints
/// messages to show the asynchronous nature of Futures in Dart.
void main() {
  print('Initializing...');

  getUrl('google.com').then((res) {
    print(res);
    print('Finished.');
  });

  print('This shows that Future is async.');
}

Future<String> getUrl(String url) {
  return Future.delayed(Duration(seconds: 5), () {
    return 'Got the URL!: $url';
  });
}

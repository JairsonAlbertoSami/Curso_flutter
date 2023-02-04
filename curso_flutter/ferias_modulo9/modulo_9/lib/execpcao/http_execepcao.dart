class HttpExeption implements Exception {
  final String sms;
  final int statusCode;

  HttpExeption({
    required this.sms,
    required this.statusCode,
  });

  @override
  String toString() {
    return sms;
  }
}

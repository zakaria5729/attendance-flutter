class AppException implements Exception {
  final Object error;

  const AppException(this.error);
}

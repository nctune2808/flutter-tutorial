class ServerException implements Exception {}

class UserCancelledException implements Exception {
  final String message;
  UserCancelledException(this.message);
}

class UserExistedException implements Exception {
  final String message;
  UserExistedException(this.message);
}

class UserInvalidEmailException implements Exception {
  final String message;
  UserInvalidEmailException(this.message);
}

class UserVerifiedException implements Exception {
  final String message;
  UserVerifiedException(this.message);
}

class UnauthorisedException implements Exception {
  final String message;
  UnauthorisedException(this.message);
}

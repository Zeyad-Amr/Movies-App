import 'package:movies_app/core/network/error_message_model.dart';

class ServerException implements Exception {
  const ServerException({
    required this.errorMessageModel,
  });
  final ErrorMessageModel errorMessageModel;
}

class LocalDataBaseException implements Exception {
  const LocalDataBaseException({
    required this.message,
  });
  final String message;
}

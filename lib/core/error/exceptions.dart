import 'package:clean_arch_movies_app/core/Movie_network/error_message_model.dart';



class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  const ServerException({required this.errorMessageModel});
}

class LocalDataBaseException implements Exception {
  final String message;

  LocalDataBaseException({required this.message});
}

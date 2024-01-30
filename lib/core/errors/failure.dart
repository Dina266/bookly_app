import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioException dioExcep) {
    switch (dioExcep.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection TimeOut with Api Server');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send TimeOut with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve TimeOut with Api Server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with Api Server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioExcep.response!.statusCode!, dioExcep.response);
      case DioExceptionType.cancel:
        return ServerFailure(' Request to Api Server was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(' Connection Error with Api Server');
      case DioExceptionType.unknown:
        if (dioExcep.message!.contains('SocketException')) {
          return ServerFailure('No internet Connection');
        } else {
          return ServerFailure('UnExpected Error, please try again');
        }
      default :
      return ServerFailure('Opps There was an error, please try again');

    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, please try again later');
    } else {
      return ServerFailure('Opps There was an error, please try again');
    }
  }
}

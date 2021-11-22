import 'package:getx_project/core/enums/enums.dart';

class AppError implements Exception {
  final AppErrorType type;

  AppError({
    required this.type,
  });
}

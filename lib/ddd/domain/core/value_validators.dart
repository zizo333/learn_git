import 'package:dartz/dartz.dart';
import 'package:getx_project/ddd/domain/core/value_failure.dart';

Either<ValueFailure, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
      const ValueFailure(failedValue: 'invalid email address'),
    );
  }
}

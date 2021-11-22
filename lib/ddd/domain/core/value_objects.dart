import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:getx_project/ddd/domain/core/value_failure.dart';
import 'package:getx_project/ddd/domain/core/value_validators.dart';

abstract class ValueObject<T> extends Equatable {
  const ValueObject();

  Either<ValueFailure, T> get value;

  bool isValid() => value.isRight();

  @override
  List<Object?> get props => [value];
}

//TODO: email address
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure, String> value;

  factory EmailAddress(String input) => EmailAddress._(
        validateEmailAddress(input),
      );

  const EmailAddress._(this.value);
}

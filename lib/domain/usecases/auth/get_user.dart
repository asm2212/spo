

import 'package:dartz/dartz.dart';
import 'package:spo/core/usecase/usecase.dart';
import 'package:spo/domain/repository/auth/auth.dart';
import 'package:spo/service_locator.dart';

class GetUserUseCase implements UseCase<Either,dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<AuthRepository>().getUser();
  }

}
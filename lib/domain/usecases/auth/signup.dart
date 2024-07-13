import 'package:dartz/dartz.dart';
import 'package:spo/core/usecase/usecase.dart';
import 'package:spo/data/models/auth/create_user_req.dart';
import 'package:spo/domain/repository/auth/auth.dart';
import 'package:spo/service_locator.dart';


class SignupUseCase implements UseCase<Either,CreateUserReq> {


  @override
  Future<Either> call({CreateUserReq ? params}) async {
    return sl<AuthRepository>().signup(params!);
  }

}
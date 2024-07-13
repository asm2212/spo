import 'package:dartz/dartz.dart';
import 'package:spo/core/usecase/usecase.dart';
import 'package:spo/data/models/auth/signin_user_req.dart';
import 'package:spo/domain/repository/auth/auth.dart';
import 'package:spo/service_locator.dart';


class SigninUseCase implements UseCase<Either,SigninUserReq> {


  @override
  Future<Either> call({SigninUserReq ? params}) async {
    return sl<AuthRepository>().signin(params!);
  }

}
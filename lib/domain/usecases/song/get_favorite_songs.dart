

import 'package:dartz/dartz.dart';
import 'package:spo/core/usecase/usecase.dart';
import 'package:spo/domain/repository/song/song.dart';
import 'package:spo/service_locator.dart';

class GetFavoriteSongsUseCase implements UseCase<Either,dynamic> {

  @override
  Future<Either> call({params}) async{
    return await sl<SongsRepository>().getUserFavoriteSongs();
  }
}
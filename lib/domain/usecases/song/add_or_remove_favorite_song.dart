

import 'package:dartz/dartz.dart';
import 'package:spo/core/usecase/usecase.dart';
import 'package:spo/domain/repository/song/song.dart';
import 'package:spo/service_locator.dart';

class AddOrRemoveFavoriteSongUseCase implements UseCase<Either,String> {
  @override
  Future<Either> call({String ? params}) async {
    return await sl<SongsRepository>().addOrRemoveFavoriteSongs(params!);
  }
  
}
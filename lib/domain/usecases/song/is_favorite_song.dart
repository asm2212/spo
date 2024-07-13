

import 'package:spo/core/usecase/usecase.dart';
import 'package:spo/domain/repository/song/song.dart';
import 'package:spo/service_locator.dart';

class IsFavoriteSongUseCase implements UseCase<bool,String> {
  @override
  Future<bool> call({String ? params}) async {
    return await sl<SongsRepository>().isFavoriteSong(params!);
  }

  
}
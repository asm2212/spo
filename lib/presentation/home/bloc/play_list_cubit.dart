import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spo/domain/usecases/song/get_play_list.dart';
import 'package:spo/presentation/home/bloc/play_list_state.dart';
import 'package:spo/service_locator.dart';


class PlayListCubit extends Cubit<PlayListState> {

  PlayListCubit() : super(PlayListLoading());

  Future < void > getPlayList() async {
    var returnedSongs = await sl < GetPlayListUseCase > ().call();
    returnedSongs.fold(
      (l) {
        emit(PlayListLoadFailure());
      },
      (data) {
        emit(
          PlayListLoaded(songs: data)
        );
      }
    );
  }
  
  
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_login_app/Bloc/covid_event.dart';
import 'package:google_login_app/models/covid_model.dart';

import '../Resources/api_repository.dart';

part 'covid_state.dart';

class CovidBloc extends Bloc<CovidEvent, CovidState> {
  CovidBloc() : super(CovidInitial()) {
    final ApiRepository _apiRepository = ApiRepository();

    on<GetCovidList>((event, emit) async {
      try {
        emit(CovidLoading());
        final mList = await _apiRepository.fetchCovidList();
        emit(CovidLoaded(mList));
        if (mList.error != null) {
          emit(CovidError(mList.error));
        }
      } on NetworkError {
        emit(CovidError("Failed to fetch data. is your device online?"));

      }
    });
  }
}
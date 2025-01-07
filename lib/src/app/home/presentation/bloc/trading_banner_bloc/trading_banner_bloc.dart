import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:libangan_mobile/src/app/home/domain/entities/banner_type_enum.dart';
import 'package:libangan_mobile/src/app/home/domain/entities/get_banner_entities.dart';
import 'package:libangan_mobile/src/app/home/domain/use_case/banner_use_case.dart';

part 'trading_banner_event.dart';
part 'trading_banner_state.dart';

@injectable
class TradingBannerBloc extends Bloc<TredingBannerEvent, TradingBannerState> {
  final BannerUseCase _bannerUseCase;

  TradingBannerBloc(this._bannerUseCase) : super(TradingBannerInitial()) {
    on<TredingBannerEvent>((event, emit) {});

    on<GetTredingBannerEvent>(_onGetTredingBannerEvent);
  }

  FutureOr<void> _onGetTredingBannerEvent(
      GetTredingBannerEvent event, Emitter<TradingBannerState> emit) async {
    emit(TradingBannerLoadingState());

    final response = await _bannerUseCase(bannerType: BannerType.Trending);

    response.fold(
      (l) => emit(TradingBannerFailedState()),
      (r) => emit(TradingBannerLoadedState(getBannerEntities: r)),
    );
  }
}

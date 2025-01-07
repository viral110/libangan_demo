import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:libangan_mobile/src/app/home/domain/entities/banner_type_enum.dart';
import 'package:libangan_mobile/src/app/home/domain/entities/get_banner_entities.dart';
import 'package:libangan_mobile/src/app/home/domain/use_case/banner_use_case.dart';

part 'banner_event.dart';
part 'banner_state.dart';

@injectable
class BannerBloc extends Bloc<BannerEvent, BannerState> {
  final BannerUseCase _bannerUseCase;

  BannerBloc(this._bannerUseCase) : super(BannerInitial()) {
    on<BannerEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<GetBannerEvent>(_onGetBannerEvent);
  }

  FutureOr<void> _onGetBannerEvent(
      GetBannerEvent event, Emitter<BannerState> emit) async {
    emit(BannerLoadingState());

    final response = await _bannerUseCase(bannerType: BannerType.Dashboard);

    response.fold(
      (l) => emit(BannerFailedState()),
      (r) => emit(BannerLoadedState(getBannerEntities: r)),
    );
  }
}

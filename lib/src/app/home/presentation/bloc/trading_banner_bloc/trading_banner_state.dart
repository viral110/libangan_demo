part of 'trading_banner_bloc.dart';

// import 'package:equatable/equatable.dart';
// import 'package:libangan_mobile/src/app/home/domain/entities/get_banner_entities.dart';

sealed class TradingBannerState extends Equatable {
  const TradingBannerState();

  @override
  List<Object> get props => [];
}

final class TradingBannerInitial extends TradingBannerState {}

final class TradingBannerLoadingState extends TradingBannerState {}

final class TradingBannerLoadedState extends TradingBannerState {
  final GetBannerEntities getBannerEntities;

  TradingBannerLoadedState({required this.getBannerEntities});
}

final class TradingBannerFailedState extends TradingBannerState {}

part of 'trading_banner_bloc.dart';

sealed class TredingBannerEvent extends Equatable {
  const TredingBannerEvent();

  @override
  List<Object> get props => [];
}

class GetTredingBannerEvent extends TredingBannerEvent {}

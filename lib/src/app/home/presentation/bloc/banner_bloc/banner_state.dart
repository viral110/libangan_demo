part of 'banner_bloc.dart';

sealed class BannerState extends Equatable {
  const BannerState();

  @override
  List<Object> get props => [];
}

final class BannerInitial extends BannerState {}

final class BannerLoadingState extends BannerState {}

final class BannerLoadedState extends BannerState {
  final GetBannerEntities getBannerEntities;

  BannerLoadedState({required this.getBannerEntities});
}

final class BannerFailedState extends BannerState {}

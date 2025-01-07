// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:libangan_mobile/src/app/home/data/data_source/banner_remote_data_source.dart'
    as _i204;
import 'package:libangan_mobile/src/app/home/data/repository/get_banner_impl.dart'
    as _i510;
import 'package:libangan_mobile/src/app/home/domain/repositories/banner_repository.dart'
    as _i791;
import 'package:libangan_mobile/src/app/home/domain/use_case/banner_use_case.dart'
    as _i1019;
import 'package:libangan_mobile/src/app/home/presentation/bloc/banner_bloc/banner_bloc.dart'
    as _i426;
import 'package:libangan_mobile/src/app/home/presentation/bloc/trading_banner_bloc/trading_banner_bloc.dart'
    as _i299;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i204.BannerRemoteDataSource>(
        () => _i204.BannerRemoteDataSource());
    gh.singleton<_i791.BannerRepository>(
        () => _i510.BennaerRepositoryImpl(gh<_i204.BannerRemoteDataSource>()));
    gh.factory<_i1019.BannerUseCase>(
        () => _i1019.BannerUseCase(gh<_i791.BannerRepository>()));
    gh.factory<_i426.BannerBloc>(
        () => _i426.BannerBloc(gh<_i1019.BannerUseCase>()));
    gh.factory<_i299.TradingBannerBloc>(
        () => _i299.TradingBannerBloc(gh<_i1019.BannerUseCase>()));
    return this;
  }
}

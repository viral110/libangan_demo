import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:libangan_mobile/core/error/failures.dart';
import 'package:libangan_mobile/src/app/home/data/data_source/banner_remote_data_source.dart';
import 'package:libangan_mobile/src/app/home/data/maapper/banner_mapper.dart';
import 'package:libangan_mobile/src/app/home/data/model/get_banner_model.dart';
import 'package:libangan_mobile/src/app/home/domain/entities/banner_type_enum.dart';
import 'package:libangan_mobile/src/app/home/domain/entities/get_banner_entities.dart';
import 'package:libangan_mobile/src/app/home/domain/repositories/banner_repository.dart';

@Singleton(
  as: BannerRepository,
  // dispose: disposeAuthenticationRepository,
)
class BennaerRepositoryImpl implements BannerRepository {
  final BannerRemoteDataSource _bannerRemoteDataSource;

  BennaerRepositoryImpl(this._bannerRemoteDataSource);

  @override
  Future<Either<Failure, GetBannerEntities>> getBanner(
      BannerType bannerType) async {
    try {
      final response = await _bannerRemoteDataSource.getBanner(bannerType);
      if (response.data['result']['status'] == 200) {
        GetBannerModel result = GetBannerModel.fromJson(response.data);
        GetBannerEntities getBannerEntities = result.toGetBannerEntities();
        return Right(getBannerEntities);
      } else {
        return Left(GetBannerFailure());
      }
    } catch (e) {
      print("e : $e");
      return Left(GetBannerFailure());
    }
  }
}

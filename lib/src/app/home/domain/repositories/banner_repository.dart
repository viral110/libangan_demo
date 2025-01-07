import 'package:dartz/dartz.dart';
import 'package:libangan_mobile/core/error/failures.dart';
import 'package:libangan_mobile/src/app/home/domain/entities/banner_type_enum.dart';
import 'package:libangan_mobile/src/app/home/domain/entities/get_banner_entities.dart';

abstract class BannerRepository {
  Future<Either<Failure, GetBannerEntities>> getBanner(BannerType bannerType);
}

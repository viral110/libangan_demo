import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:libangan_mobile/core/error/failures.dart';
import 'package:libangan_mobile/src/app/home/domain/entities/banner_type_enum.dart';
import 'package:libangan_mobile/src/app/home/domain/entities/get_banner_entities.dart';
import 'package:libangan_mobile/src/app/home/domain/repositories/banner_repository.dart';

@injectable
class BannerUseCase {
  final BannerRepository _bannerRepository;

  BannerUseCase(this._bannerRepository);

  Future<Either<Failure, GetBannerEntities>> call(
      {required BannerType bannerType}) async {
    return _bannerRepository.getBanner(bannerType);
  }
}

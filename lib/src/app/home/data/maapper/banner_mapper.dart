import 'package:libangan_mobile/src/app/home/data/model/get_banner_model.dart';
import 'package:libangan_mobile/src/app/home/domain/entities/get_banner_entities.dart';

extension BannerMapper on GetBannerModel {
  GetBannerEntities toGetBannerEntities() {
    return GetBannerEntities(
        jsonrpc: jsonrpc,
        id: id,
        resultEntities: result!.toBannerResultEntities());
  }
}

extension BannerResultMapper on Result {
  BannerResultEntities toBannerResultEntities() {
    return BannerResultEntities(
        status: status,
        message: message,
        data: data!.toNotificationListConvert());
  }
}

extension BannerDataMapper on Data {
  BannerDataEntities toBannerDataEntities() {
    return BannerDataEntities(
      id: id,
      name: name,
      categoryId: categoryId,
      categoryName: categoryName,
      link: link,
      image: image,
    );
  }
}

extension BannerResultListConvertMappers on List<Data> {
  List<BannerDataEntities> toNotificationListConvert() {
    return map((e) => e.toBannerDataEntities()).toList();
  }
}

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:libangan_mobile/src/app/home/domain/entities/banner_type_enum.dart';
import 'package:libangan_mobile/src/common/constant/api_helper.dart';
import 'package:libangan_mobile/src/utils/global_data_config.dart';

@injectable
class BannerRemoteDataSource {
  final Dio _dio = Dio();

  Future<Response> getBanner(BannerType bannerType) async {
    int bannerId = await getBannerId(bannerType);

    Response response = await _dio.post(
      ApiHelper.baseUrl + ApiHelper.listBannerByCategoryId,
      data: {
        "params": {"category_id": bannerId}
      },
      options: Options(
        contentType: "application/json",
        headers: {
          HttpHeaders.acceptHeader: "application/json",
        },
        // receiveTimeout: Duration(
        //     milliseconds: GlobalDataConfig.serverReceiveTimeOutMilliSecond),
      ),
    );

    return response;
  }

  Future<int> getBannerId(BannerType bannerType) async {
    Response reponse = await _dio.post(
      ApiHelper.baseUrl + ApiHelper.bannerCategoryList,
      data: {"params": {}},
      options: Options(
        contentType: "application/json",
        headers: {
          HttpHeaders.acceptHeader: "application/json",
        },
        receiveTimeout: Duration(
            milliseconds: GlobalDataConfig.serverReceiveTimeOutMilliSecond),
      ),
    );
    List<dynamic> categoruList = reponse.data!["result"]["data"];

    int bannerId = categoruList
        .where((element) => element["name"] == bannerType.name.toUpperCase())
        .toList()
        .first["id"];

    return bannerId;
  }
}

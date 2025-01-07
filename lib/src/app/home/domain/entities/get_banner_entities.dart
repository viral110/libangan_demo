import 'package:equatable/equatable.dart';

class GetBannerEntities extends Equatable {
  final String? jsonrpc;
  final String? id;
  final BannerResultEntities? resultEntities;

  const GetBannerEntities({this.jsonrpc, this.id, this.resultEntities});
  @override
  List<Object?> get props => throw UnimplementedError();
}

class BannerResultEntities extends Equatable {
  final int? status;
  final String? message;
  final List<BannerDataEntities>? data;

  const BannerResultEntities({this.status, this.message, this.data});

  @override
  List<Object?> get props => [status, message, data];
}

class BannerDataEntities extends Equatable {
  final int? id;
  final String? name;
  final int? categoryId;
  final String? categoryName;
  final String? link;
  final String? image;
  const BannerDataEntities(
      {this.id,
      this.name,
      this.categoryId,
      this.categoryName,
      this.link,
      this.image});

  @override
  List<Object?> get props => [id, name, categoryId, categoryName, link, image];
}

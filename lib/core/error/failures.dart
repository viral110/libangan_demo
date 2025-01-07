import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List _properties;

  const Failure([this._properties = const []]);

  @override
  List<Object?> get props => _properties;
}

class UnknownFailure extends Failure {}

class ErrorFailure extends Failure {}

class AuthenticationFailure extends Failure {}

class CredentialFailure extends Failure {}

class TimeInOutFailure extends Failure {}

class CheckInOutFailure extends Failure {}

class ViewCheckInOutFailure extends Failure {}

class AssignCompanyListFailure extends Failure {}

class DashboardCompanyListFailure extends Failure {}

class NotificationFailure extends Failure {}

class DeleteNotificationFailure extends Failure {}

class DeleteOtherTypeNotificationFailure extends Failure {}

class GetDepartmentFailure extends Failure {}

class GetOfficeLocationFailure extends Failure {}

class EditOfficeLocationFailure extends Failure {}

class CreateOfficeLocationFailure extends Failure {}

class CompanyAttendanceFailure extends Failure {}

class PersonalAttendanceFailure extends Failure {}

class GetAnnouncementFailure extends Failure {}

class GetProfilePageFailure extends Failure {}

class GetTimeSeriesFailure extends Failure {}

class FetchDataFromUploadedIdFailure extends Failure {}

class UploadKycVideoFailure extends Failure {}

class ResubmitEkycDocFailure extends Failure {}

class GetEkycRecordFailure extends Failure {}

class EkycRecordNotFoundFailure extends Failure {}

class GetWalletBalanceFailure extends Failure {}

class CreateEkycRecordFailure extends Failure {}

class SaveEkycRecordFailure extends Failure {}

class GetLoadFavProductFailure extends Failure {}

class GetProviderListFailure extends Failure {}

class GetProductCategoryFailure extends Failure {}

class GetLoadProductFailure extends Failure {}

class GetBuyLoadTopUpProcessFailure extends Failure {}

class BuyLoadFavProductCreateFailure extends Failure {}

class GetBillerCatgoryFailure extends Failure {}

class GetEnrolledBillerFailure extends Failure {}

class GetBillerDetailByCategoryFailure extends Failure {}

class GetBillerDetailByBillerNameFailure extends Failure {}

class PayBillsProcessFailure extends Failure {}

class ListBillerRemindMeFailure extends Failure {}

class QRPHTransactionCreateFailure extends Failure {}

class BankTransferGuideFailure extends Failure {}

class GetTransactionHisFailure extends Failure {}

class GetTransactionHisDetailFailure extends Failure {}

class SendMoneyToWalletFailure extends Failure {}

class SaveFavSendMoneyFailure extends Failure {}

class FavTransferMoneyListFailure extends Failure {}

class FavSendMoneyListFailure extends Failure {}

class TransferToWalletOrBankFailure extends Failure {}

class TransferBankListFailure extends Failure {}

class GetEntertainmentCategoryFailure extends Failure {}

class GetBannerFailure extends Failure {}

class TransactionHistoryFailure extends Failure {}

import 'package:hamy_yamy/common/models/response_model.dart';
import 'package:hamy_yamy/features/coupon/domain/models/coupon_body_model.dart';
import 'package:hamy_yamy/features/coupon/domain/repositories/coupon_repository_interface.dart';
import 'package:hamy_yamy/features/coupon/domain/services/coupon_service_interface.dart';

class CouponService implements CouponServiceInterface {
  final CouponRepositoryInterface couponRepositoryInterface;
  CouponService({required this.couponRepositoryInterface});

  @override
  Future<List<CouponBodyModel>?> getCouponList(int offset) async {
    return await couponRepositoryInterface.getCouponList(offset);
  }

  @override
  Future<CouponBodyModel?> getCouponDetails(int id) async {
    return await couponRepositoryInterface.get(id);
  }

  @override
  Future<bool> changeStatus(int? couponId, int status) async {
    return await couponRepositoryInterface.changeStatus(couponId, status);
  }

  @override
  Future<ResponseModel?> addCoupon(Map<String, String?> data) async {
    return await couponRepositoryInterface.addCoupon(data);
  }

  @override
  Future<ResponseModel?> updateCoupon(Map<String, String?> data) async {
    return await couponRepositoryInterface.update(data);
  }

  @override
  Future<ResponseModel?> deleteCoupon(int couponId) async {
    return await couponRepositoryInterface.delete(id: couponId);
  }

}
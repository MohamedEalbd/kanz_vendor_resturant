import 'package:get/get.dart';
import 'package:hamy_yamy/api/api_client.dart';
import 'package:hamy_yamy/features/business/domain/models/business_plan_body.dart';
import 'package:hamy_yamy/features/business/domain/models/package_model.dart';
import 'package:hamy_yamy/features/business/domain/repositories/business_repository_interface.dart';
import 'package:hamy_yamy/util/app_constants.dart';

class BusinessRepository implements BusinessRepositoryInterface<dynamic> {
  final ApiClient apiClient;

  BusinessRepository({required this.apiClient});

  @override
  Future<Response> setUpBusinessPlan(BusinessPlanBody businessPlanBody) async {
    return await apiClient.postData(AppConstants.businessPlanUri, businessPlanBody.toJson());
  }

  @override
  Future<PackageModel?> getList({int? offset}) async {
    PackageModel? packageModel;
    Response response = await apiClient.getData(AppConstants.restaurantPackagesUri);
    if(response.statusCode == 200) {
      packageModel = PackageModel.fromJson(response.body);
    }
    return packageModel;
  }

  @override
  Future add(dynamic value) {
    throw UnimplementedError();
  }

  @override
  Future delete({int? id}) {
    throw UnimplementedError();
  }

  @override
  Future get(int? id) {
    throw UnimplementedError();
  }

  @override
  Future update(Map<String, dynamic> body) {
    throw UnimplementedError();
  }

}

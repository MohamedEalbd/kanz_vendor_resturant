import 'package:get/get_connect/connect.dart';
import 'package:hamy_yamy/features/business/domain/models/business_plan_body.dart';
import 'package:hamy_yamy/interface/repository_interface.dart';

abstract class BusinessRepositoryInterface<T> implements RepositoryInterface<T> {
  Future<Response> setUpBusinessPlan(BusinessPlanBody businessPlanBody);
}
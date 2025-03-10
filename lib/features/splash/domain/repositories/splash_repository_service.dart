import 'package:hamy_yamy/interface/repository_interface.dart';

abstract class SplashRepositoryInterface implements RepositoryInterface {
  Future<dynamic> getConfigData();
  Future<bool> initSharedData();
  Future<bool> removeSharedData();
  bool showIntro();
  void setIntro(bool intro);
}
import 'package:hamy_yamy/common/widgets/custom_app_bar_widget.dart';
import 'package:hamy_yamy/features/reports/widgets/sub_menu_card_widget.dart';
import 'package:hamy_yamy/helper/route_helper.dart';
import 'package:hamy_yamy/util/dimensions.dart';
import 'package:hamy_yamy/util/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisbursementMenuScreen extends StatelessWidget {
  const DisbursementMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBarWidget(title: 'disbursement'.tr),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
          child: Column(children: [

            SubMenuCardWidget(title: 'view_disbursement_history'.tr, image: Images.disbursementIcon, route: () => Get.toNamed(RouteHelper.getDisbursementRoute())),
            const SizedBox(height: Dimensions.paddingSizeLarge),

            SubMenuCardWidget(title: 'disbursement_method_setup'.tr, image: Images.transactionIcon, route: () => Get.toNamed(RouteHelper.getWithdrawMethodRoute())),

          ]),

        ),
      ),
    );
  }
}
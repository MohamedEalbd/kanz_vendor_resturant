import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamy_yamy/common/widgets/custom_button_widget.dart';
import 'package:hamy_yamy/util/dimensions.dart';
import 'package:hamy_yamy/util/images.dart';
import 'package:hamy_yamy/util/styles.dart';
class PermissionDialogWidget extends StatelessWidget {
  final String title;
  final String description;
  const PermissionDialogWidget({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.radiusSmall)),
      insetPadding: const EdgeInsets.all(30),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.fontSizeLarge),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
            padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
            child: Image.asset(Images.warning, width: 50, height: 50),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeLarge),
            child: Text(
              title, textAlign: TextAlign.center,
              style: robotoMedium.copyWith(fontSize: Dimensions.fontSizeExtraLarge, color: Theme.of(context).colorScheme.error),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
            child: Text(description, style: robotoMedium.copyWith(fontSize: Dimensions.fontSizeLarge), textAlign: TextAlign.center),
          ),

          CustomButtonWidget(buttonText: 'okay'.tr, onPressed: () {
            Get.back();
          }),
        ]),
      ),
    );
  }
}

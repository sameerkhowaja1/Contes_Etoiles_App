import 'package:contes_etoiles/utils/app_colors.dart';
import 'package:contes_etoiles/utils/app_images.dart';
import 'package:contes_etoiles/utils/app_strings.dart';
import 'package:contes_etoiles/views/screens/narrator_list_of_books/controller/list_of_book_controller.dart';
import 'package:contes_etoiles/views/screens/narrator_selection/controller/narrator_selection_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../custom_widget/custom_book_tile_widget.dart';
import '../../custom_widget/custom_scaffold.dart';

class EwanNarratorListOfBookScreen
    extends GetView<AmbreNarratorListOfBookController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScaffold(
      className: runtimeType.toString(),
      screenName: "Tes contes étoilés",
      actions: [
        Container(
            margin: EdgeInsets.only(right: 20.w),
            child: Image.asset(
              kEwanImg,
              width: 60.w,
              height: 60.w,
            ))
      ],
      scaffoldKey: controller.scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                Get.toNamed(kStoryPlayerRoute);
              },
              child: ListView.builder(
                itemCount: controller.storyTileList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return CustomBookTileWidget(storyList: controller.storyTileList[index],);
                },),
            )
          ],
        ),
      ),
    );
  }
}



import 'package:contes_etoiles/utils/app_colors.dart';
import 'package:contes_etoiles/utils/app_images.dart';
import 'package:contes_etoiles/utils/app_strings.dart';
import 'package:contes_etoiles/views/screens/narrator_list_of_books/controller/list_of_book_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../custom_widget/custom_book_tile_widget.dart';
import '../../custom_widget/custom_scaffold.dart';

class StoriesListingScreen extends GetView<StoriesListingController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScaffold(
      className: runtimeType.toString(),
      screenName: "Tes contes étoilés",
      actions: [
        Container(
            margin: EdgeInsets.only(right: 20.w),
            child: Obx(
              () => Image.asset(
                controller.selectedNarrator.value == "Ambre" ? kAmbreImg : kEwanImg,
                width: 60.w,
                height: 60.w,
              ),
            ))
      ],
      scaffoldKey: controller.scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FutureBuilder(
                future: controller.getAllStories(controller.selectedNarrator.value),
                builder: (BuildContext context, loadingStatus) {
                  if (loadingStatus.connectionState == ConnectionState.done) {
                    return controller.storyTileList.isNotEmpty
                        ? Obx(
                            () => ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.storyTileList.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () async {
                                    bool value = await Get.toNamed(kStoryPlayerRoute, arguments: {
                                      "storiesList": controller.storyTileList,
                                      "storyIndex": index,
                                      "storyLocal": controller.storyListLocal
                                    });

                                    if (value == true) {
                                      print('===============hey I am true');
                                      controller.getAllStories(controller.selectedNarrator.value);
                                      //controller.storyListLocal.value = value;
                                    }
                                  },
                                  child: CustomBookTileWidget(
                                    storyLocal: controller.storyListLocal[index],
                                    storiesList: controller.storyTileList[index],
                                  ),
                                );
                              },
                            ),
                          )
                        : Container(
                            height: Get.height,
                            color: Theme.of(context).appBarTheme.backgroundColor,
                            child: Center(
                              child: Text("Stories not found",
                                  style: TextStyle(
                                      fontSize: 18.sp, height: 1.2, fontWeight: FontWeight.w500, fontFamily: 'Metropolis', color: kBlackColor)),
                            ),
                          );
                  } else {
                    return Container(
                      height: Get.height,
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: kPrimaryColor,
                        ),
                      ),
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}

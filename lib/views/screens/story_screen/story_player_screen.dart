import 'package:contes_etoiles/utils/app_colors.dart';
import 'package:contes_etoiles/utils/app_images.dart';
import 'package:contes_etoiles/views/screens/narrator_list_of_books/controller/list_of_book_controller.dart';
import 'package:contes_etoiles/views/screens/narrator_selection/controller/narrator_selection_controller.dart';
import 'package:contes_etoiles/views/screens/story_screen/controller/story_player_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../custom_widget/custom_book_tile_widget.dart';
import '../../custom_widget/custom_scaffold.dart';

class StoryPlayerScreen
    extends GetView<StoryScreenController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScaffold(
      className: runtimeType.toString(),
      screenName: "Tu écoutes...",
      scaffoldKey: controller.scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 140.h,),
          Center(
            child: Image.asset(kBook2Img, width: 300.w, height: 300.h,),
          ),
          SizedBox(height: 90.h,),
          Container(
              width: Get.width * 0.50,
              child: Text(textAlign: TextAlign.center,'Le dinosaure qui revait de voler.', style: TextStyle(fontSize: 23.sp, fontFamily: 'Metropolis', color: kWhiteColor,fontWeight: FontWeight.w500),)),
          SizedBox(height: 40.h,),
          SliderTheme(
              data: SliderThemeData(
                  overlayShape: SliderComponentShape.noOverlay,
                  thumbShape: RoundSliderOverlayShape(overlayRadius: 0),
                  trackHeight: 5),
              child: Slider(
                value: 60,
                onChanged: (value) {},
                activeColor: kPrimaryColor,
                inactiveColor: kWhiteColor,
                min: 0,
                max: 100,
              )),
          SizedBox(height: 40.h,),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('0:36', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, fontFamily: 'Metropolis', color: kWhiteColor,),),
              IconButton(onPressed: () {}, icon: Image.asset(kSkipPreviousIcon, color: kWhiteColor)),
              Obx(
                ()=> Container(
                  padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child:Icon(controller.isPlaying == false ? Icons.play_arrow_rounded : Icons.pause_rounded, color: kWhiteColor,size: 60,)),
              ),
              IconButton(onPressed: () {}, icon: Image.asset(kSkipNextIcon, color: kWhiteColor)),
              Text('3:40', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, fontFamily: 'Metropolis', color: kWhiteColor,),),
            ],
          )
        ],
      ),
    );
  }
}



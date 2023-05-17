import 'package:responsive_ui/app/data/config/config.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/home_dtails_controller.dart';

class HomeDtailsView extends GetView<HomeDtailsController> {
  const HomeDtailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeDtailsController());
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColor.black),
        elevation: 0,
        backgroundColor: AppColor.white,
        title: Text(
          'Details',
          style: TextStyle(
            color: AppColor.black,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: AppColor.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: SizedBox(
        height: Get.height,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 460.h,
            child: PageView(controller: controller.sController, children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.sp),
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: AppColor.grey,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AppImage.b1),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.sp),
                width: Get.width,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.grey),
                  borderRadius: BorderRadius.circular(30.r),
                  color: AppColor.grey,
                  image: DecorationImage(
                    colorFilter:
                        ColorFilter.mode(AppColor.grey, BlendMode.color),
                    fit: BoxFit.cover,
                    image: AssetImage(AppImage.b2),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.sp),
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: AppColor.grey,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AppImage.b3),
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.all(14.0.sp),
            child: Center(
              child: SmoothPageIndicator(
                onDotClicked: (index) {},
                controller: controller.sController,
                count: 3,
                effect: JumpingDotEffect(
                    spacing: 2,
                    dotColor: AppColor.grey,
                    dotHeight: 8,
                    dotWidth: 8),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Women's\nSweatshirt",
                  style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black),
                ),
                Padding(
                    padding: EdgeInsets.all(1.0.sp),
                    child: Center(
                      child: SmoothPageIndicator(
                        onDotClicked: (index) {
                          controller.indexxx(index);
                        },
                        controller: controller.sController,
                        count: 3,
                        effect: JumpingDotEffect(
                            paintStyle: PaintingStyle.stroke,
                            activeDotColor: controller.indexxx.value == 0
                                ? Colors.yellow
                                : controller.indexxx.value == 1
                                    ? AppColor.black
                                    : controller.indexxx.value == 2
                                        ? Colors.red
                                        : AppColor.black,
                            spacing: 5,
                            dotColor: AppColor.grey,
                            dotHeight: 16,
                            dotWidth: 16),
                      ),
                    ))
              ],
            ),
          ),
          Container(
            height: 40.h,
            margin: EdgeInsets.symmetric(vertical: 20.h),
            alignment: Alignment.center,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.items.length,
                itemBuilder: (ctx, index) {
                  return Obx(
                    () => GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          controller.currentIndex(index);
                        }

                        if (index == 1) {
                          controller.currentIndex(index);
                        }

                        if (index >= 2) {
                          controller.currentIndex(index);
                        }
                      },
                      child: Container(
                        height: 33.h,
                        margin: EdgeInsets.symmetric(horizontal: 19.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          color: controller.currentIndex.value.toInt() == index
                              ? AppColor.black
                              : AppColor.white,
                        ),
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 22.w),
                            child: Text(
                              controller.items[index],
                              style: TextStyle(
                                  color:
                                      controller.currentIndex.value.toInt() ==
                                              index
                                          ? AppColor.white
                                          : AppColor.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.w),
                            )),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "€18,00",
                style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColor.black),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 25.sp, vertical: 13.sp),
                decoration: BoxDecoration(
                  color: AppColor.black,
                  borderRadius: BorderRadius.circular(28.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: AppColor.white,
                    ),
                    SizedBox(
                      width: 8.sp,
                    ),
                    Text(
                      "Add to Bag",
                      style: TextStyle(
                        color: AppColor.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      )),
    );
  }
}

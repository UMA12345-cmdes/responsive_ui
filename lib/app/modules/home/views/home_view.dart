import 'package:responsive_ui/app/data/config/config.dart';
import 'package:responsive_ui/app/modules/HomeDtails/views/home_dtails_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColor.black),
          leading: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 12.sp,
            ),
            child: CircleAvatar(
              radius: 13.r,
              backgroundImage: AssetImage(AppImage.a1),
            ),
          ),
          elevation: 0,
          backgroundColor: AppColor.white,
          title: Text(
            'Hi, Arif',
            style: TextStyle(
              color: AppColor.black,
            ),
          ),
          actions: [
            Icon(
              Icons.search_outlined,
              color: AppColor.black,
            ),
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
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 17.sp, vertical: 12.sp),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: 40.h,
                margin: EdgeInsets.symmetric(vertical: 10.h),
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
                            margin: EdgeInsets.symmetric(horizontal: 10.sp),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.r),
                              color:
                                  controller.currentIndex.value.toInt() == index
                                      ? AppColor.black
                                      : AppColor.white,
                            ),
                            alignment: Alignment.center,
                            child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 22.w),
                                child: Text(
                                  controller.items[index],
                                  style: TextStyle(
                                      color: controller.currentIndex.value
                                                  .toInt() ==
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
              Obx(() => controller.currentIndex.value == 0
                  ? customAllCart()
                  : controller.currentIndex.value == 1
                      ? customCartMens()
                      : controller.currentIndex.value == 2
                          ? customCartWomen()
                          : controller.currentIndex.value == 3
                              ? customCartKids()
                              : const SizedBox()),
            ],
          ),
        )));
  }

  customCartKids() {
    return GridView.count(
      padding: EdgeInsets.only(top: 20.sp),
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      // crossAxisSpacing: 2.sp,
      mainAxisSpacing: 16.sp,
      shrinkWrap: true,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(const HomeDtailsView());
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 190.h,
                  // width: 170.w,
                  decoration: BoxDecoration(
                      color: AppColor.grey,
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(AppImage.a2)),
                      borderRadius: BorderRadius.circular(18.r)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.sp),
                  child: Text(
                    "Men's Hoddie",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
                Text(
                  "€18,00",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  customCartWomen() {
    return GridView.count(
      padding: EdgeInsets.only(top: 20.sp),
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      // crossAxisSpacing: 2.sp,
      mainAxisSpacing: 16.sp,
      shrinkWrap: true,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(const HomeDtailsView());
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.sp,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 195.h,
                  // width: 170.w,
                  decoration: BoxDecoration(
                      color: AppColor.grey,
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(AppImage.a5)),
                      borderRadius: BorderRadius.circular(18.r)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.sp),
                  child: Text(
                    "Womens's Sweatshirit",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
                Text(
                  "€18,00",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  customCartMens() {
    return GridView.count(
      padding: EdgeInsets.only(top: 20.sp),
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      // crossAxisSpacing: 2.sp,
      mainAxisSpacing: 16.sp,
      shrinkWrap: true,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(const HomeDtailsView());
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 195.h,
                  // width: 170.w,
                  decoration: BoxDecoration(
                      color: AppColor.grey,
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(AppImage.a1)),
                      borderRadius: BorderRadius.circular(18.r)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.sp),
                  child: Text(
                    "Premium Cotton Shirt",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
                Text(
                  "€18,00",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(const HomeDtailsView());
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 195.h,
                  // width: 170.w,
                  decoration: BoxDecoration(
                      color: AppColor.grey,
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(AppImage.a3)),
                      borderRadius: BorderRadius.circular(18.r)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.sp),
                  child: Text(
                    "Men's T-Shirt",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
                Text(
                  "€18,00",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  customAllCart() {
    return GridView.count(
      padding: EdgeInsets.only(top: 20.sp),
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      // crossAxisSpacing: 2.sp,
      mainAxisSpacing: 16.sp,
      shrinkWrap: true,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(const HomeDtailsView());
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.sp,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 195.h,
                  // width: 170.w,
                  decoration: BoxDecoration(
                      color: AppColor.grey,
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(AppImage.a5)),
                      borderRadius: BorderRadius.circular(18.r)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.sp),
                  child: Text(
                    "Womens's Sweatshirit",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
                Text(
                  "€18,00",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(const HomeDtailsView());
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 195.h,
                  // width: 170.w,
                  decoration: BoxDecoration(
                      color: AppColor.grey,
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(AppImage.a1)),
                      borderRadius: BorderRadius.circular(18.r)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.sp),
                  child: Text(
                    "Premium Cotton Shirt",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
                Text(
                  "€18,00",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(const HomeDtailsView());
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 195.h,
                  // width: 170.w,
                  decoration: BoxDecoration(
                      color: AppColor.grey,
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(AppImage.a3)),
                      borderRadius: BorderRadius.circular(18.r)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.sp),
                  child: Text(
                    "Men's T-Shirt",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
                Text(
                  "€18,00",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(const HomeDtailsView());
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 190.h,
                  // width: 170.w,
                  decoration: BoxDecoration(
                      color: AppColor.grey,
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(AppImage.a2)),
                      borderRadius: BorderRadius.circular(18.r)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.sp),
                  child: Text(
                    "Men's Hoddie",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
                Text(
                  "€18,00",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

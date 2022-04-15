import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:task_app/constants/constants.dart';
import 'package:task_app/logic/controller/image_controller.dart';
import 'package:task_app/view/widget/custom_form_field.dart';

import '../widget/image_card.dart';

class ExplorePage extends StatelessWidget {
  ExplorePage({Key? key}) : super(key: key);
  final ImageController imageController = Get.put(ImageController());
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              //search box
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  child: CustomFormField(
                    validatorTxt: 'search',
                    controller: searchController,
                    hint: 'Search in Swipexyz...',
                    icons: IconlyLight.search,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 16),
                child: Divider(
                  height: 1,
                  color: Colors.grey.withOpacity(.4),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: ScreenSize(context).mainHeight / 1.47,
                  child: GetBuilder<ImageController>(
                      init: ImageController(),
                      builder: (controller) {
                        return controller.imageList.isEmpty
                            ? Container()
                            : StaggeredGridView.countBuilder(
                                padding: EdgeInsets.zero,
                                crossAxisCount: 3,
                                itemCount: controller.imageList.length,
                                itemBuilder: (context, index) => ImageCard(
                                  imageUrl: controller
                                      .imageList[index].thumbnail
                                      .toString(),
                                  name: controller.imageList[index].title,
                                  brand: controller.imageList[index].brand,
                                ),
                                staggeredTileBuilder: (index) =>
                                    StaggeredTile.count(
                                        (index % 7 == 0) ? 2 : 1,
                                        (index % 7 == 0) ? 2 : 1),
                                mainAxisSpacing: 8,
                                crossAxisSpacing: 8,
                              );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

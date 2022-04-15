import 'package:get/get.dart';
import 'package:task_app/data/model/image_model.dart';
import 'package:task_app/data/services/image_service.dart';

class ImageController extends GetxController {
  var isLoading = false.obs;
  var imageList = <Products>[].obs;

  @override
  void onInit() {
    getImageList();

    super.onInit();
  }

  getImageList() async {
    try {
      var images = await ImageService.imageList();
      if (images != null) {
        imageList.value = images.products!;
      }
      update();
    } finally {
      isLoading(false);
      update();
    }
  }
}

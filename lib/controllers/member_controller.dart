import 'package:camsquad/src/images.dart';
import 'package:get/get.dart';

class MemberController extends GetxController{

  List<String> listPublic = [
    AssetData.imgTraditionalPhoto,
    AssetData.imgTraditionalVideo,
    AssetData.imgCandiPhoto,
    AssetData.imgCandidVideo,
    AssetData.imgHeliCamDrone,
    AssetData.imgLedWall,
    AssetData.imgLiveStream,
  ];

  RxInt selectedTab = 0.obs;

  changeTab(int index){
    selectedTab.value = index;
  }
}
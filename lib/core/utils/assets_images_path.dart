const String imageAssetsRoot = "assets/images/";
const String iconAssetsRoot = "assets/icons/";

String onBoardingScreen = _getAssetsImagePath('OnBoardingScreen.png');

//  icons
String arrowDownIcon = _getAssetsIconPath('arrow-down.svg');

String _getAssetsImagePath(String fileName) {
  return imageAssetsRoot + fileName;
}

String _getAssetsIconPath(String fileName) {
  return iconAssetsRoot + fileName;
}

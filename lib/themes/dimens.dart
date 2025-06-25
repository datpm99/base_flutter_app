import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '/utils/ui_utils.dart';

class PaddingDimens {
  PaddingDimens._();

  static double horizontal = UIUtil.isTablet ? 24.w : 16.w;
  static double horizontalLogin = UIUtil.isTablet ? 24.w : 20.w;
  static double horizontalLarge = UIUtil.isTablet ? 32.w : 16.w;
  static double vertical24 = 24.w;
  static double vertical10 = UIUtil.isTablet ? 10.w : 8.w;
  static double vertical = UIUtil.isTablet ? 16.w : 12.w;
  static double verticalLarge = UIUtil.isTablet ? 32.w : 8.w;
  static double verticalMedium = UIUtil.isTablet ? 30.w : 28.w;
  static double verticalItem = 8.w;
  static double horizontalItem = 16.w;
  static double verticalMini = 4.w;
  static double horizontalMini = 8.w;
  static double verticalExtraMini = 2.w;
  static double horizontalExtraMini = 4.w;
  static double horizontalButton = 16.w;
  static double verticalButton = 8.w;
  static double horizontalTextField = 16.w;
  static double verticalTextField = 8.w;
  static double horizontalTextFieldAppBar = 16.w;
  static double verticalTextFieldAppBar = 8.w;
  static double horizontalToolBar = 24.w;
  static double verticalTitleTable = UIUtil.isTablet ? 12.w : 8.w;
  static double verticalFieldHome = 24.w;
  static double horizontalSmallTextField = 8.w;
  static double featureHomeNew = UIUtil.isTablet ? 18.w : 13.w;
  static double featureHome = 12.w;
  static double filter = 12.w;
  static double verticalNote = 32.w;
  static double horizontal32 = 32.w;
  static double verticalBottomScroll = 150.w;
}

class IconDimens {
  IconDimens._();

  static double padding = 4.w;
  static double sizeBox = 32.w;
  static double icon = 24.w;
  static double sizeAction = 38.w;
  static double size = 10.w;
  static double dotSize = 10.w;
  static double featureHomeNew = UIUtil.isTablet ? 44.w : 36.w;
  static double featureHome = 56.w;
  static double logoSize = 72.w;
  static double sizeView = 24.w;
  static double sizeView20 = 22.w;
  static double sizeView40 = 30.w;
  static double bgCircleMeeting = 46.w;
  static double avtDelegate = 80.w;
  static double filter = 40.w;
  static double mini = 16.w;
  static double filledIcon = 20.w;
  static double clear = 28.w;
  static double news = UIUtil.isTablet ? 80.w : 60.w;
  static double feedback = UIUtil.isTablet ? 128.w : 96.w;
}

class MarginDimens {
  MarginDimens._();

  static double small = UIUtil.isTablet ? 4.w : 2.w;
  static double itemContinuous = 4.w;
  static double item = UIUtil.isTablet ? 8.w : 4.w;
  static double element = UIUtil.isTablet ? 12.w : 8.w;
  static double block = UIUtil.isTablet ? 16.w : 12.w;
  static double bottomAction = 128.w;
  static double appbarHorizontal = 24.w;
  static double appbarVertical = 16.w;
  static double meetingAction = UIUtil.isTablet ? 32.w : 0;
  static double meetingBlock = UIUtil.isTablet ? 84.w : 0;
  static double menuBlock = 40.w;
  static double footerHorizontal = 32.w;
  static double footerVertical = 8.w;
}

class RadiusDimens {
  RadiusDimens._();

  static double defaultRadius = 12.r;
  static double itemRadius = 8.r;
  static double borderRadiusBanner = 30.r;
  static double borderRadiusSlider = 8.r;
  static double borderRadiusImageNews = 2.r;
  static double borderRadiusImageNewsDetail = 10.r;
  static double featureHome = 24.r;
  static double bgIcon = 40.r;
  static double cardItem = 12.r;
}

class TextSizeDimens {
  TextSizeDimens._();

  static double smallText = UIUtil.isTablet ? 12.sp : 10.sp;
  static double mediumText = UIUtil.isTablet ? 14.sp : 12.sp;
  static double largeText = UIUtil.isTablet ? 16.sp : 14.sp;
  static double extraLargeText = UIUtil.isTablet ? 18.sp : 16.sp;

  static double extraSmallHeadline = UIUtil.isTablet ? 12.sp : 18.sp;
  static double smallHeadline = UIUtil.isTablet ? 26.sp : 24.sp;
  static double mediumHeadline = UIUtil.isTablet ? 38.sp : 36.sp;
  static double largeHeadline = UIUtil.isTablet ? 50.sp : 48.sp;
  static double extraLargeHeadline = UIUtil.isTablet ? 62.sp : 60.sp;
  static double extraExtraLargeHeadline = UIUtil.isTablet ? 74.sp : 72.sp;
}

class OtherDimens {
  OtherDimens._();

  static double borderThick = 1.w;
  static double heightTabBar = GetPlatform.isAndroid ? 74.w : 68.w;
  static double widthDrawer = UIUtil.isTablet ? 0.3.sw : 0.9.sw;
  static double marginLeading = 24.w;
  static double heightSlider = UIUtil.isTablet ? 160.w : 158.w;
  static double sliderViewportFraction = UIUtil.isTablet ? 0.7 : 0.8;
  static double widthSlider = 500.w;
  static double widthRectTitle = 4.w;
  static double heightRectTitle = 20.w;
  static double widthImageNewsPreview = 98.w;
  static double heightImageNewsPreview = 65.w;
  static double widthImageNewsDetail = 360.w;
  static double heightImageNewsDetail = 160.w;
  static double featureHomeCrossSpacing = 16.w;
  static double featureHomeMainSpacing = UIUtil.isTablet ? 32.w : 16.w;
  static double delegateMeetingCrossSpacing = 17.w;
  static double delegateMeetingMainSpacing = 24.w;
  static double sizeIndex = 48.w;
  static double sizeIndexSmall = 16.w;
  static double heightCustomSliding = 36.w;
  static double heightCustomSlidingWithCount = UIUtil.isTablet ? 36.w : 48.w;
  static double widthColumn1 = 40.w;
  static double widthColumn2 = 200.w;
  static double widthColumn3 = 200.w;
  static double widthColumn4 = 300.w;
  static double heightMeetingRoom = 300.w;
  static double avatarFull = 136.w;
  static double avatar = 64.w;
  static double miniAvatarRadius = 28.w;
  static double emptyViewWidth = UIUtil.isTablet ? 0.3.sw : 0.5.sh;
  static double emptyViewHeight = UIUtil.isTablet ? 0.5.sw : 0.3.sh;
  static double weekDay = 104.w;
  static double elevation_3 = 3;
  static double elevation_1 = 1;
  static double transparent = 0.2;
  static double strokeWidth = 2;
  static List<double> dashPattern = [10, 10];
  static double divider4 = 4;
  static double divider2 = 2;
  static double flexColumnWidth = 1;
  static double flexColumnWidth3 = 3;
  static double flexColumnWidth20 = 20;
  static double loading = 48.w;
  static double loadingMore = 32.w;
  static double mainAxisSpacing = 8.w;
  static double crossAxisSpacing = 8.w;
  static double minScreenWidth = 600.w;
  static int crossAxisCount = UIUtil.isTablet ? 2 : 1;
  static double drawerWidth = UIUtil.isTablet ? 0.3.sw : 0.7.sw;
  static double endDrawerWidth = UIUtil.isTablet ? 0.4.sw : 0.8.sw;
  static double drawerWidthFile = UIUtil.isTablet ? 0.6.sw : 0.9.sw;
  static double itemSpacing = UIUtil.isTablet ? 32.w : 64.w;
  static double popoverHeight = 50.w;
  static double widthButtonPopover = 200.w;
  static double heightButtonPopover = 70.w;
  static double widthFeatureItem = UIUtil.isTablet ? 150.w : 130.w;
  static double runSpacing = 4.w;
  static double itemLogisticSpacing = UIUtil.isTablet ? 8.w : 32.w;
  static double heightTabBarFile = 64.w;
  static double widthLogin = UIUtil.isTablet ? 0.5.sw : 1.sw;
  static double heightDrawerHeader = 80.w;
  static double maxHeightPopover = 400.w;
  static double heightTitlePopup = 42.w;
}

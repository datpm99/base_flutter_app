# Base_Flutter_App
Project base cho Flutter App.

## Feature
* Definition common icon, text, color and widget.
* Extensions (Boolean, Datetime, num, String).
* Change theme (Dark, Light).
* Đa ngôn ngữ (En, Vi).
* Handle call API (base on Dio).
* Adaptive Page.
* Load more listView.
* Firebase Crashlytics.
* Local storage (base on get_storage).

## Requirement
* Flutter Version: 3.27.3.
* Dart SDK: 3.6.1.
* IDE: Android Studio or Visual Code.

## Getting Started
* Copy code sau vào file pubspec.yaml.

```shell script
  base_flutter_app:
    git:
      url: https://github.com/knottx/image_gallery_saver.git
      ref: master
```

## Base Structure
Cấu trúc project base_flutter_app.
- ```constants```: Bao gồm các cấu hình chung cho project.<br>
- ```extensions```: Bao gồm các phần mở rộng cho boolean, dateTime, num, string.<br>
- ```languages```: Bao gồm các file ngôn ngữ.<br>
- ```mixins```: Bao gồm các cấu hình về adaptive page, load more.<br>
- ```services```: Bao gồm các cấu hình về api, local storage, firebase crashlytics.<br>
- ```themes```: Bao gồm các cấu hình về color, text, icon, textStyle.<br>
- ```utils```: Bao gồm các function dùng chung.<br>
- ```widgets```: Bao gồm các widget chung được khởi tạo sẵn.<br>

## App Structure
Cấu trúc project khuyến khích sử dụng phía application.
- ```constants```: Bao gồm các cấu hình của ứng dụng.<br>
- ```languages```: Bao gồm các file ngôn ngữ của ứng dụng.<br>
- ```models```: Bao gồm các cấu model của ứng dụng.<br>
- ```pages```: Bao gồm các folder theo màn hình của ứng dụng.<br>
- ```routes```: Bao gồm các cấu hình về router.<br>
- ```services```: Bao gồm các cấu hình về api, local storage của ứng dụng.<br>
- ```widgets```: Khởi tạo các widget dùng chung của ứng dụng.<br>

## Usage
### Đa ngôn ngữ
Project hỗ trợ 2 ngôn ngữ là: Tiếng Anh và Tiếng Việt.
* Thêm key language mới vào các file sau:

`lib/languages/vi_vn.dart`

```arb
{
  'login': 'Đăng nhập',
}
```

`lib/languages/en_us.dart`

```arb
{
  'login': 'Login',
}
```

* Sử dụng key vừa thêm như bên dưới.

```dart
Text('login'.tr),
```

* Để change language gọi các function sau.

```dart
final lang = Get.find<LangController>();
lang.changeLang('vi', 'VN');
lang.changeLang('en', 'US');
```

### Theme
* Cách sử dụng color.

```dart
Text('login'.tr, style: AppTypography.textXLMedium(color: TokenColors.body)),
```

* Cách sử dụng textStyles.

```dart
Text('login'.tr, style: AppTypography.textXLMedium()),
```

* Cách sử dụng BoxShadow.

```dart
// Use a BoxShadow.
Container(
  decoration: BoxDecoration(
    color: Colors.white,
    boxShadow: EffectStyles.shadowXS(),
  ),
  child: Image.asset('assets/icons/ic_advance_ticket.png', width: 24),
),
```

### Logger
<img src="https://raw.githubusercontent.com/Bungeefan/logger/master/art/screenshot.png"/>

```dart
///Logger.
static void showLogInfo(String msg) {
  loggerNoStack.i(msg);
}

static void showLogWarning(String msg) {
  loggerNoStack.w(msg);
}

static void showLogError(String msg) {
  logger.e(msg);
}

///Usage.
AppUtils.showLogInfo('This is info log');
AppUtils.showLogWarning('This is warning log');
AppUtils.showLogError('This is error log');

///Note.
//loggerNoStack : number of method calls to be displayed equal 0.
//logger: number of method calls to be displayed equal 2.
```

### Data state
Dự án này sử dụng GetX để quản lý trạng thái. Trong lớp Controller, sử dụng GetxController.

Có hai cách để cập nhật trạng thái. Sử dụng biến `Rx` hoặc Hàm `update();`

* Cách 1: Sử dụng biến `Rx`

```dart
// Class controller.
import 'package:get/get.dart';

class CounterController extends GetxController {
  Rx<int> count = 0.obs;

  void increment() {
    count.value++;
  }
}
```

```dart
// Class view.
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Text('${controller.count.value}');
      }),
    );
  }
}
```

* Cách 2: Sử dụng Function `update();`
  Trong trường hợp có nhiều nơi sử dụng trong 1 screen, cần phải cập nhật trạng thái bằng ID.

```dart
// Class controller.
import 'package:get/get.dart';

class CounterController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update([1]); //Only update widget with id equal to 1.
  }
}
```

```dart
// Class view.
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CounterController>(
        id: 1,
        builder: (c) {
          return Text('${c.count}');
        },
      ),
    );
  }
}
```

Read more [Getx state management](https://pub.dev/packages/get#state-management)

### Route
Dự án này sử dụng GetX để quản lý router. Được định nghĩa trong đường dẫn `lib/routes/routes.dart`

```dart
import 'package:get/get.dart';
import '/pages/page.dart';

abstract class Routes {
  static const login = '/login';
  static const loginOutSide = '/login_outside';
  static const changePassword = '/change_password';
}

abstract class AppPages {
  static String initial = Routes.login;

  static final routes = [
    GetPage(
      name: Routes.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
```
#### Navigation with named routes

Navigate to a new screen with name.
```dart
Get.toNamed(Routes.login);
```

To navigate and remove the previous screen from the tree.
```dart
Get.offNamed(Routes.login);
```

To navigate and remove all previous screens from the tree.
```dart
Get.offAllNamed(Routes.login);
```

To close anything you would normally close with Navigator.pop(context).
```dart
Get.back();
```

On other screen, send a data for previous route:
```dart
Get.back(result: 'success');
```

#### Send data to named Routes

Just send what you want for arguments. Get accepts anything here, whether it is a String, a Map, a List, or even a class instance.
```dart
Get.toNamed(Routes.login, arguments: 'Get is the best');
```

on your class or controller:

```dart
print(Get.arguments);
//print out: Get is the best
```

Read more [Getx route management](https://github.com/jonataslaw/getx/blob/master/documentation/en_US/route_management.md)

### Handle call API (base on Dio)
Sau đây là sơ đồ trình tự hành động lấy dữ liệu từ API.
<img src="https://firebasestorage.googleapis.com/v0/b/demofirebase-5d7b7.appspot.com/o/dio.png?alt=media&token=56785e54-af06-461a-b72b-d033f9543803"/>

Cách sử dụng.
<img src="https://firebasestorage.googleapis.com/v0/b/demofirebase-5d7b7.appspot.com/o/dio1.png?alt=media&token=00da69ed-75ea-4db5-beaa-098c945ff8cd" />

* Đầu tiên, tạo một model để map data response từ api sử dụng link để gen model ([quicktype.io](https://app.quicktype.io/)).
```dart
class LoginModel {
  LoginModel({
    required this.status,
    required this.message,
    this.data,
  });

  int status;
  String message;
  Data? data;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    status: json["status"] ?? 0,
    message: json.containsKey("message") ? json["message"] : '',
    data: (json["data"] == null) ? null : Data.fromJson(json["data"]),
  );
}

class Data {
  Data({
    required this.token,
    required this.tokenTimeout,
    required this.captcha,
    required this.refreshToken,
    required this.refreshTokenExpiredAt,
  });

  String token;
  int tokenTimeout;
  String captcha;
  String refreshToken;
  int refreshTokenExpiredAt;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    token: json.containsKey("token") ? json["token"] : '',
    tokenTimeout: json["tokenTimeout"] ?? 0,
    captcha: json.containsKey("captcha") ? json["captcha"] : '',
    refreshToken: json["refreshToken"] ?? '',
    refreshTokenExpiredAt: json["refreshTokenExpiredAt"] ?? 0,
  );
}
```

* Bước 2, Tạo function để call api login trong file `login_service.dart`.
```dart
Future<LoginModel?> login(String request) async {
  try {
    var response = await _service.postRequest(
      url: CommonApi.login,
      data: request,
    );
    if (response != null) {
      return LoginModel.fromJson(response.data);
    }
  } catch (e) {
    debugPrint(e.toString());
  }
  return null;
}
```

* Bước 3, Tạo function để xử lý logic login trong UI `login_controller.dart`.
```dart
Future<void> login() async {
  AppUtils.showLoader();
  LoginRequest request = LoginRequest(
    username: '',
    password: '',
  );
  var result = await loginService.login(request.toJson());
  await AppUtils.hideLoader();

  if (result != null && result.status == 200) {
    Get.offAllNamed(Routes.root);
  } else if (result != null && result.message.isNotEmpty) {
    AppUtils.showError(result.message);
  } else {
    debugPrint('error ---> _login');
    AppUtils.showError('msg_have_error'.tr);
  }
}
```

### Handle different screens
<img src="https://firebasestorage.googleapis.com/v0/b/demofirebase-5d7b7.appspot.com/o/sizes-phone-tablet.png?alt=media&token=d9a1bf8d-c7fe-4688-b562-6ac1578bb28d"/>

* Add `with AdaptivePage` into Widget.
```dart
class LoginView extends StatelessWidget with AdaptivePage{
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: adaptiveBody(context),
    );
  }

  @override
  Widget mobileLandscapeBody(BuildContext context, Size size) {
    // TODO: implement mobileLandscapeBody
    throw UnimplementedError();
  }

  @override
  Widget mobilePortraitBody(BuildContext context, Size size) {
    // TODO: implement mobilePortraitBody
    throw UnimplementedError();
  }

  @override
  Widget tabletLandscapeBody(BuildContext context, Size size) {
    // TODO: implement tabletLandscapeBody
    throw UnimplementedError();
  }

  @override
  Widget tabletPortraitBody(BuildContext context, Size size) {
    // TODO: implement tabletPortraitBody
    throw UnimplementedError();
  }
}
```

### Load more
* Add `with LoadMoreMixin` into file controller.

```dart
class SettingController extends GetxController with LoadMoreMixin {
  final _service = TestService();
  List<User> lstUser = [];

  @override
  Future<void> getData() async {
    var data = {
      "page": page,
      "per_page": 10,
    };
    final result = await _service.getUsers(data);
    await 1.delay();
    isLoading = false;

    if (result != null) {
      if (page == result.totalPages) isLoadMore = false;
      lstUser.addAll(result.data);
      update();
      return;
    }

    debugPrint('error ---> getListUser');
    update();
  }

  @override
  void updateData() {
    update();
  }

  Future<void> onRefreshData() async {
    lstUser.clear();
    refreshData();
  }

  @override
  void onReady() {
    super.onReady();
    loadMoreData();
    getData();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
```

* Xử lý bên UI.
```dart
class Setting2View extends StatelessWidget {
  const Setting2View({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
      builder: (c) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Setting'),
          ),
          body: SafeArea(
            child: ListViewWidget(
              isLoading: c.isLoading,
              itemCount: c.lstUser.length,
              scrollController: c.scrollController,
              onRefresh: c.onRefreshData,
              showIndicatorLoadMore: (!c.isLoadData),
              child: (ctx, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 4,
                        spreadRadius: 1,
                        offset: const Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.network(
                          c.lstUser[index].avatar,
                          width: 48,
                          height: 48,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                                  '${c.lstUser[index].firstName} ${c.lstUser[index].lastName}'),
                          Text(c.lstUser[index].email),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
```
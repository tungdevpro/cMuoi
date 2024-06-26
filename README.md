# cMuoi

Một số lưu ý / Some notes

## Requirements
- Flutter SDK: 3.22.1
- CocoaPods: 1.12.1

### For IDE (VS Code, Android Studio)

<details>
  <summary>Config for VS Code</summary>
  (.vscode/launch.json)

  
  ```json
  {
    "version": "0.2.0",
    "configurations": [
        {
            "name": "dev",
            "request": "launch",
            "type": "dart",
            "program": "lib/main_dev.dart",
            "args": [
                "--flavor",
                "dev"
            ]
        },
        {
            "name": "uat",
            "request": "launch",
            "type": "dart",
            "program": "lib/main_uat.dart",
            "args": [
                "--flavor",
                "uat"
            ]
        },
        {
            "name": "prod",
            "request": "launch",
            "type": "dart",
            "program": "lib/main_prod.dart",
            "args": [
                "--flavor",
                "live"
            ]
        }
    ]
}
  ```


  (.vscode/settings.json)

  ```json
  {
    "dart.flutterSdkPath": ".fvm/flutter_sdk",
    "search.exclude": {
        "**/.fvm": true
    },
    "files.watcherExclude": {
        "**/.fvm": true
    }
}
  ```
</details>


<details>
  <summary>Config for Android Studio</summary>

  - Updating...
</details>

## Project structure
![img](https://res.cloudinary.com/practicaldev/image/fetch/s--8Fs2hOeU--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_800/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/fqeiepngw5aeco73r3wx.png)

<br>Source: [dev.to](https://dev.to/marwamejri/flutter-clean-architecture-1-an-overview-project-structure-4bhf)

## Installation
- Using FVM (Flutter Version Management) to run/build app. You can install it by following the instructions in [the FVM document](https://fvm.app/docs/getting_started/installation)

1, To generate DI
```bash
cd data|domain
```
and run:
```bash
dart run build_runner build  --delete-conflicting-outputs
dart run intl_utils:generate
```

2, Run generate splash/icon
```bash
dart run flutter_native_splash:create
dart run flutter_launcher_icons
```


## Project structure

```
project
├─ data (call to api server)
│  ├─ datasource
│  ├─ mapper
│  ├─ network
│  └─ repository
├─ domain (is where the business login is stored)
│  ├─ model
│  ├─ repository
│  └─ usecase
├─ lib (is where UI is displayed)
│  ├─ common
|  |  └─ constants (is where project configurations such as color and size are stored)
│  ├─ core
│  ├─ features
│  └─ shared
└─ environment
```

## Libraries Used
- bloc: State management (Quản lý state)
- flutter_bloc: Extends BLoC pattern for Flutter.
- get_it: Sử dụng cho Dependency Injection
- injectable: Generation DI
- dio: Handle REST API (Xử lý thao tác với api)
- retrofit: Generator & call api safey (dễ và handle api safety)
- logger:  prints beautiful logs
- pretty_dio_logger: show log network one way pretty, easy to read format
- cached_network_image: Show & caching image from network
- flutter_svg: An SVG rendering
- easy_localization: Multi-language support (Đa ngôn ngữ)
- formz: for validatior form input (chỉ đơn giản là validate và tác các valiate ra một file riêng để dễ quản lý)
- lottie: Create animation using json (Hiệu ứng animation bằng json)
- pinput: Pin code input (OTP) text field
- 3rd_party:
  - permission_lib: Request access permissions such as camera, notifications (Yêu cầu quyền device)
  - firebase_module: Handle firebase (authentication, push notification, v.v.v)

## Important Note
Feature/Screen nào thì tương ứng với tính năng đấy, không lồng ghép các Screen vào trong nhau:

**BAD**
```
UI
└─ Screen_A
   ├─ A_Page.dart
   └─ Screen_B
      └─ B_Page.dart
```

**GOOD**
```
UI
├─ Screen_A
│  └─ A_Page.dart
└─ Screen_B
   └─ B_Page.dart
```

Cấu trúc của một màn hình sẽ như sau:
```
UI
└─ Screen_A
   ├─ bloc
   │  ├─ A_bloc.dart
   │  ├─ A_event.dart
   │  └─ A_state.dart
   ├─ components
   │  ├─ widget_1_comp.dart
   │  ├─ widget_2_comp.dart
   │  └─ widget_3_comp.dart
   ├─ A_Page.dart
   └─ A.dart (optional)
```
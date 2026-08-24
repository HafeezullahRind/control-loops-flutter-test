# Flutter Test App 🚀

A modern Flutter service provider booking mobile application built with **GetX** and **Flutter ScreenUtil**.

---

## 📋 Prerequisites

Ensure you have the following installed on your machine:

- **Flutter SDK**: `^3.11.0` or higher ([Install Flutter](https://docs.flutter.dev/get-started/install))
- **Dart SDK**: `^3.11.3` (bundled with Flutter)
- **Android Studio** (with Android SDK & Emulator) or **Xcode** (for iOS simulator)
- An IDE such as **VS Code**, **Android Studio**, or **Antigravity** with Flutter extensions

Check your environment setup by running:
```bash
flutter doctor
```

---

## 🛠️ Getting Started & Setup

### 1. Clone the repository
```bash
git clone <https://github.com/hafeez021/control-loops-flutter-test.git>
cd flutter_test_app
```

### 2. Install dependencies
Fetch all required packages specified in `pubspec.yaml`:
```bash
flutter pub get
```

---

## ▶️ Running the Project

### Start an emulator or connect a device
List available devices / emulators:
```bash
flutter devices
```

### Launch the app
Run the app in debug mode on your connected device:
```bash
flutter run
```

To target a specific device:
```bash
flutter run -d <device_id>
```

---

## 🗂️ Project Structure

```
lib/
├── constants/         # App colors, fonts, icons, and static strings
├── core/              # Utility classes, route configurations, and themes
├── model/             # Data models (ProviderItem, etc.)
├── shared_widget/     # Reusable components (ProviderCard, ProvidersList, etc.)
├── view/              # Feature screens & widgets
│   ├── home/                  # Home screen and widgets
│   ├── service_category/      # Service categories & controller (GetX)
│   ├── provider_detail/       # Provider detail view and widgets
│   ├── chat_view/             # Chat screen
│   └── profile_view/          # Profile screen
└── main.dart          # Application entry point
```

---

## 🧪 Useful Commands

- **Code Analysis**:
  ```bash
  flutter analyze
  ```
- **Run Tests**:
  ```bash
  flutter test
  ```
- **Build Release APK (Android)**:
  ```bash
  flutter build apk --release
  ```
- **Clean Build Cache**:
  ```bash
  flutter clean
  flutter pub get
  ```


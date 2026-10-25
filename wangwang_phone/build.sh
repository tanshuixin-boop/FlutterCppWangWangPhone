#!/bin/bash
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
git clone https://github.com/flutter/flutter.git -b stable --depth 1 $HOME/flutter
export PATH="$PATH:$HOME/flutter/bin"
flutter config --enable-web
flutter create . --platforms=web
flutter pub get
flutter build web --no-web-resources-cdn

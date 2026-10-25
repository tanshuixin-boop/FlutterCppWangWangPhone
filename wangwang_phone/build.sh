#!/bin/bash
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
git clone https://github.com/flutter/flutter.git -b stable --depth 1 $HOME/flutter
export PATH="$PATH:$HOME/flutter/bin"
flutter config --enable-web
flutter create . --platforms=web
sed -i '/<head>/a <script>window.flutterConfiguration = { canvasKitBaseUrl: "https://cdn.jsdelivr.net/npm/canvaskit-wasm@0.33.0/bin/" };</script>' web/index.html
flutter pub get
flutter build web

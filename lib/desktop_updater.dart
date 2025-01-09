import "package:desktop_updater/desktop_updater_platform_interface.dart";
import "package:desktop_updater/src/file_hash.dart";

class DesktopUpdater {
  Future<String?> getPlatformVersion() {
    return DesktopUpdaterPlatform.instance.getPlatformVersion();
  }

  Future<String?> sayHello() {
    return Future.value("Hello from DesktopUpdater!");
  }

  /// Uygulamayı kapatır ve yeniden başlatır
  Future<void> restartApp() {
    return DesktopUpdaterPlatform.instance.restartApp();
  }

  Future<String?> getExecutablePath() {
    return DesktopUpdaterPlatform.instance.getExecutablePath();
  }

  Future<bool> verifyFileHash(String filePath, String expectedHash) {
    return verifyFileHash(filePath, expectedHash);
  }

  Future<String?> generateFileHashes({String? path}) {
    return genFileHashes(path: path);
  }
}

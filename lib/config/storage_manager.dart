import 'dart:io';

import 'package:localstorage/localstorage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

class StorageManager {
  ///app全局配置 eg:theme  [late]延迟初始化
  static late SharedPreferences sharedPreferences;

  /// 临时目录 eg: cookie
  static late Directory temporaryDirectory;

  /// 初始化必备操作 eg:user数据
  static late LocalStorage localStorage;

  /// 必备数据的初始化操作
  ///
  /// 由于是同步操作会导致阻塞,所以应尽量减少存储容量
  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    temporaryDirectory = await getTemporaryDirectory();
    localStorage = LocalStorage('LocalStorage');
    await localStorage.ready;
  }
}
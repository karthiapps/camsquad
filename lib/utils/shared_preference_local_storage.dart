import 'package:shared_preferences/shared_preferences.dart';

import '../constant/shared_preference_const.dart';
import 'encrypt_decrypt.dart';

class SharedPreferenceLocalStorage {

  static late SharedPreferences _preferences;

  static init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future<void> setToken(value) async {
    String val = EncryptDecrypt.encryptFernet(value);
    await _preferences.setString(SharedPreferenceConst.accessToken, val);
  }

  static Future<String?> getToken() async {
    String val = '';
    var data =  _preferences.getString(SharedPreferenceConst.accessToken);
    if(data != null && data.isNotEmpty){
      val = EncryptDecrypt.decryptFernet(data);
    }
    return val;
  }

  static Future<void> setLoginInfo(value) async {
    String val = EncryptDecrypt.encryptFernet(value);
    await _preferences.setString(SharedPreferenceConst.loginInfo, val);
  }

  static Future<String?> getLoginInfo() async {
    String val = '';
    var data =  _preferences.getString(SharedPreferenceConst.loginInfo);
    if(data != null && data.isNotEmpty){
      val = EncryptDecrypt.decryptFernet(data);
    }
    return val;
  }

  clear() async{
    await _preferences.clear();
  }
}

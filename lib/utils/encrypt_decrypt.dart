import 'dart:convert';

import 'package:encrypt/encrypt.dart';

class EncryptDecrypt{

  static Encrypted? fernetEncrypted;
  static var fernetDecrypted;

  static encryptFernet(plainText){
    final key = Key.fromUtf8('/UMLM+w78qFxq6ETU/AQkmOz');
    final iv = IV.fromLength(16);
    final b64key = Key.fromUtf8(base64Url.encode(key.bytes));
    final fernet = Fernet(b64key);
    final encrypter = Encrypter(fernet);
    fernetEncrypted = encrypter.encrypt(plainText);
    return fernetEncrypted!.base64.toString();
  }
  static decryptFernet(plainText){
    final key = Key.fromUtf8('/UMLM+w78qFxq6ETU/AQkmOz');
    final iv = IV.fromLength(16);
    final b64key = Key.fromUtf8(base64Url.encode(key.bytes));
    final fernet = Fernet(b64key);
    final encrypter = Encrypter(fernet);
    final encry = Encrypted.from64(plainText);
    fernetDecrypted = encrypter.decrypt(encry);
    return fernetDecrypted.toString();
  }
}
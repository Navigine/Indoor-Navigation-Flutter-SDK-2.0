import 'package:flutter/services.dart';

class SdkMethodChannel extends MethodChannel {
  const SdkMethodChannel(String name) : super('flutter_navigine_sdk/$name');
}
import 'dart:html';

import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

class FilePicker extends Component with MixinDisable {
  FilePicker() : super('FilePicker');

  @override
  Element get element => fileUploadInputElement;

  FileUploadInputElement fileUploadInputElement = FileUploadInputElement();

  File getCurrentFile() => fileUploadInputElement.files!.first;

  String get caption => fileUploadInputElement.title ?? '';

  set caption(String newVal) => fileUploadInputElement.title = newVal;
}

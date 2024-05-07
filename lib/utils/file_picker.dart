import 'dart:io';

import 'package:file_picker/file_picker.dart';

class FilePickers {
  void filePicker() async {
    FilePickerResult? filePickerResult = await FilePicker.platform.pickFiles();
    File file = File(filePickerResult!.files.single.path!);
    print(file);
  }
}

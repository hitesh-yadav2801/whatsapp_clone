import 'dart:io';
import 'package:image_picker/image_picker.dart';

Future<File?> pickImage() async {
  try {
    print('here');
    XFile? xFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );
    print('here1');
    if (xFile != null) {
      return File(xFile.path);
    }
    return null;
  } catch (e) {
    null;
  }
}

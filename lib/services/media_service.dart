import 'dart:io';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../generated/l10n.dart';

class MediaService {
  final log = getLogger('StorageService');
  final ImagePicker _picker = ImagePicker();
  final  _localizationService = locator<I10n>();

  Future<XFile?> openGallery() {
    return  _picker.pickImage(
      source: ImageSource.gallery ,
    );

  }

  Future<XFile?> openCamera() {
    return _picker.pickImage(
      source: ImageSource.camera ,
    );
  }

  Future<File?> cropImage(String path) async {
    return await ImageCropper().cropImage(
        sourcePath: path,
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: _localizationService.cropper,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),

    );
  }
}

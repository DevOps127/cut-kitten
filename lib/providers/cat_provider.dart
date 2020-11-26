import 'dart:async';

import 'package:cute_kitten/model/core/cat_photo.dart';
import 'package:cute_kitten/model/core/glitch.dart';
import 'package:cute_kitten/model/helpers/cat_photo_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class CatProvider extends ChangeNotifier {
  final _helper = CatPhotoHelper();
  final _streamController = StreamController<Either<Glitch, CatPhoto>>();
  Stream<Either<Glitch, CatPhoto>> get catPhotoStream {
    return _streamController.stream;
  }

  Future<void> getTwentyRandomPhoto() async {
    for (int i = 0; i < 20; i++) {
      final catHelperResult = await _helper.getRandomCatPhoto();
      _streamController.add(catHelperResult);
    }
  }

  void refreshGird() {
    getTwentyRandomPhoto();
  }
}

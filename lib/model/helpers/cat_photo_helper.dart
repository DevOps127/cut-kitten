import 'dart:convert';

import 'package:cute_kitten/model/core/cat_photo.dart';
import 'package:cute_kitten/model/core/glitch.dart';
import 'package:cute_kitten/model/internet_exception.dart';
import 'package:cute_kitten/model/services/cat_photo_api.dart';
import 'package:dartz/dartz.dart';

class CatPhotoHelper {
  final api = CatPhotoApi();
  Future<Either<Glitch, CatPhoto>> getRandomCatPhoto() async {
    final apiResult = await api.getRandomCatPhoto();
    return apiResult.fold((l) {
      return Left(NoInternetGlitch());
    }, (r) {
      final photo = CatPhoto.fromMap(jsonDecode(r)[0]);
      return Right(photo);
    });
  }
}

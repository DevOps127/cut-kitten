import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class CatPhotoApi {
  String endPoint = "api.thecatapi.com";

  Future<Either<Exception, String>> getRandomCatPhoto() async {
    try {
      final queryParameters = {
        "api_key": "aab4e59a-159f-43b9-8d56-95a7f560d437",
      };
      final uri = Uri.https(endPoint, "/v1/images/search", queryParameters);
      final response = await http.get(uri);
      return Right(response.body);
    } catch (e) {
      return (Left(e));
    }
  }
}

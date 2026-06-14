import "package:dio/dio.dart";
import "package:melodi/features/browse/browse.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "carousels.g.dart";

@riverpod
FutureOr<List<Carousel>> carousels(Ref ref) async {
  final dio = Dio();

  final response = await dio.get(
    "http://localhost:3000/carousels",
    queryParameters: {"country": "mexico"},
  );
  final carousels = (response.data as List).map((e) => Carousel.fromJson(e)).toList();

  return carousels;
}

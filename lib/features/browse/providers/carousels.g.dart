// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousels.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(carousels)
final carouselsProvider = CarouselsProvider._();

final class CarouselsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Carousel>>,
          List<Carousel>,
          FutureOr<List<Carousel>>
        >
    with $FutureModifier<List<Carousel>>, $FutureProvider<List<Carousel>> {
  CarouselsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'carouselsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$carouselsHash();

  @$internal
  @override
  $FutureProviderElement<List<Carousel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Carousel>> create(Ref ref) {
    return carousels(ref);
  }
}

String _$carouselsHash() => r'd9e3b30add1de417666430f092b2f8d3cff254a6';

import "package:carousel_slider/carousel_controller.dart";
import "package:flutter/widgets.dart";
import "package:flutter_hooks/flutter_hooks.dart";

class _CarouselController extends Hook<CarouselSliderController> {
  const _CarouselController();

  @override
  _CarouselControllerState createState() => _CarouselControllerState();
}

class _CarouselControllerState extends HookState<CarouselSliderController, _CarouselController> {
  late final CarouselSliderController _controller;

  @override
  void initHook() {
    super.initHook();
    _controller = CarouselSliderController();
  }

  @override
  CarouselSliderController build(BuildContext context) {
    return _controller;
  }

  @override
  void dispose() {
    super.dispose();
  }
}

CarouselSliderController useCarouselSliderController() {
  return use(const _CarouselController());
}

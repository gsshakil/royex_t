import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:royex_task/core/constants/colors.dart';

class BoxSlider extends StatefulWidget {
  const BoxSlider({super.key, required this.imageList});

  final List<String> imageList;

  @override
  State<BoxSlider> createState() => _BoxSliderState();
}

class _BoxSliderState extends State<BoxSlider> {
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: IconButton(
            onPressed: () {
              _controller.previousPage();
            },
            icon: const Icon(Icons.arrow_left_sharp),
          ),
        ),
        Expanded(
          flex: 4,
          child: CarouselSlider(
            items: widget.imageList
                .map((item) => Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: kLightGreyColor),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      margin: const EdgeInsets.all(5),
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              enlargeCenterPage: false,
              height: 100,
              viewportFraction: 0.35,
            ),
            carouselController: _controller,
          ),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
            onPressed: () {
              _controller.nextPage();
            },
            icon: const Icon(Icons.arrow_right_sharp),
          ),
        ),
      ],
    );
  }
}

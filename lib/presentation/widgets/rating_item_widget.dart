import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:royex_task/core/constants/colors.dart';

class RatingItemWidget extends StatelessWidget {
  const RatingItemWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Irfan A. - 08 Jan 2022',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            const SizedBox(height: 7),
            Text(
              'Color Family: Blue',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: kLightGreyColor),
            ),
          ],
        ),
        RatingBar.builder(
          initialRating: value,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 18,
          ignoreGestures: true,
          itemPadding: const EdgeInsets.symmetric(horizontal: 2),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: kRedColor,
          ),
          onRatingUpdate: (rating) {},
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:royex_task/core/constants/colors.dart';
import 'package:royex_task/presentation/widgets/rating_item_widget.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: kLightGreyColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Ratings',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.star,
                  color: kRedColor,
                ),
                Text(
                  '4.8',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold, color: kDarkGreyColor),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '320 Ratings',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: kGreyColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 18),
                ),
                const Icon(
                  Icons.arrow_right,
                  color: kGreyColor,
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 15),
        // Rating Widget
        const RatingItemWidget(value: 3),
        const SizedBox(height: 20),
        const RatingItemWidget(value: 4),
        const SizedBox(height: 20),
        const RatingItemWidget(value: 3),
        const SizedBox(height: 20),
        const RatingItemWidget(value: 5),
        Center(
          child: MaterialButton(
            onPressed: () {},
            child: const Text(
              'View All',
              style: TextStyle(color: kRedColor),
            ),
          ),
        )
      ]),
    );
  }
}

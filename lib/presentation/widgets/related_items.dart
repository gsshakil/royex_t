import 'package:flutter/material.dart';
import 'package:royex_task/core/constants/colors.dart';
import 'package:royex_task/presentation/widgets/related_item_card.dart';

class RelatedItems extends StatelessWidget {
  const RelatedItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Column(children: [
        // Heading
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Related Items',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                'View More',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: kRedColor, fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),

        // Carousel
        SizedBox(
          height: 280,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const RelatedItemCard();
              }),
        ),
      ]),
    );
  }
}

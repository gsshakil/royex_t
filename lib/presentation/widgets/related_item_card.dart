import 'package:flutter/material.dart';
import 'package:royex_task/core/constants/colors.dart';
import 'package:royex_task/presentation/widgets/floating_discount_display.dart';

class RelatedItemCard extends StatelessWidget {
  const RelatedItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.375,
      height: 280,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          border: Border.all(color: kLightGreyColor),
          borderRadius: BorderRadius.circular(5),
          color: kWhiteColor),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/tv-image.png',
                fit: BoxFit.cover,
              ),
            ),
            const FloatingDiscountDisplay(
              isSmall: true,
            ),
            Positioned(
              right: 20,
              top: 0,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
              ),
            )
          ],
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/brand-logo.png',
              width: MediaQuery.of(context).size.width * 0.135,
            ),
            Image.asset(
              'assets/images/arabic.png',
              width: MediaQuery.of(context).size.width * 0.135,
            ),
          ],
        ),
        const SizedBox(height: 5),
        const Text(
          '43-inch LED FHD Smart Android TV (2022)',
          style: TextStyle(color: kRedColor),
        ),
        const SizedBox(height: 5),
        const Text(
          '43s6',
          style: TextStyle(color: kGreyColor),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$199',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 3),
                const Text(
                  '\$215',
                  style: TextStyle(
                      fontSize: 9,
                      color: kGreyColor,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'IQD 298,500',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 3),
                const Text(
                  'IQD 322,500',
                  style: TextStyle(
                      fontSize: 9,
                      color: kGreyColor,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.16,
              height: 20,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                    backgroundColor: kGreenColor),
                onPressed: () {},
                child: const Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(fontSize: 6),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.16,
              height: 20,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                    backgroundColor: kRedColor),
                onPressed: () {},
                child: const Center(
                  child: Text(
                    'Add to cart',
                    style: TextStyle(fontSize: 6),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

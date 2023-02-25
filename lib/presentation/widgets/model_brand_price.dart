import 'package:flutter/material.dart';
import 'package:royex_task/core/constants/colors.dart';
import 'package:royex_task/domain/entities/product_entity.dart';

class ModelBrandPrice extends StatelessWidget {
  const ModelBrandPrice({
    Key? key,
    required this.productEntity,
  }) : super(key: key);

  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Text(
            productEntity.title,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'Model:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '43S6',
                    style: TextStyle(color: kGreyColor),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Brand:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 5),
                  Image.asset('assets/images/brand-logo.png'),
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          _buildReviewSection(),
          const SizedBox(height: 15),
          _buildPriceSection(context)
        ],
      ),
    );
  }

  Row _buildReviewSection() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: kOrangeColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(children: const [
            Icon(
              Icons.star,
              size: 16,
              color: kWhiteColor,
            ),
            SizedBox(width: 5),
            Text(
              '4.8',
              style: TextStyle(color: kWhiteColor),
            ),
          ]),
        ),
        const SizedBox(width: 10),
        const Text(
          '(320 Reviews)',
          style: TextStyle(color: kDarkGreyColor),
        )
      ],
    );
  }

  Row _buildPriceSection(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              '\$199',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 5),
            const Text(
              '\$215',
              style: TextStyle(
                  color: kDarkGreyColor,
                  decoration: TextDecoration.lineThrough),
            ),
          ],
        ),
        const SizedBox(width: 30),
        Row(
          children: [
            Text(
              'IQD 298,500',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 5),
            const Text(
              'IQD 322,500',
              style: TextStyle(
                  color: kDarkGreyColor,
                  decoration: TextDecoration.lineThrough),
            ),
          ],
        )
      ],
    );
  }
}

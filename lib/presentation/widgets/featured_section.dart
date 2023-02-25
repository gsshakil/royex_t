import 'package:flutter/material.dart';
import 'package:royex_task/core/constants/colors.dart';
import 'package:royex_task/domain/entities/product_entity.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({
    Key? key,
    required this.productEntity,
  }) : super(key: key);

  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            productEntity.image.src,
            fit: BoxFit.cover,
            errorBuilder: ((context, error, stackTrace) =>
                const Icon(Icons.error)),
          ),
        ),
        Positioned(
          left: 30,
          top: 20,
          child: Stack(
            children: [
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: kRedColor,
                ),
              ),
              Positioned(
                left: 2.5,
                top: 2.5,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: kWhiteColor),
                    borderRadius: BorderRadius.circular(50),
                    color: kRedColor,
                  ),
                  child: const Center(
                    child: Text(
                      'Off\n7%',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        // Favourite and share button
        Positioned(
          right: 0,
          top: 20,
          child: Column(
            children: [
              MaterialButton(
                onPressed: () {},
                child: const Material(
                    child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.favorite_border),
                )),
              ),
              MaterialButton(
                onPressed: () {},
                child: const Material(
                    child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.share),
                )),
              ),
            ],
          ),
        ),

        // In Stock?
        Positioned(
          right: 20,
          bottom: 5,
          child: productEntity.status == "active"
              ? Container(
                  width: 90,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  color: kGreenColor.withOpacity(0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'In Stock',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: kGreenColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.beenhere_rounded,
                        color: kGreenColor,
                        size: 16,
                      )
                    ],
                  ),
                )
              : Container(
                  width: 110,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  color: kGreenColor.withOpacity(0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Out of Stock',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: kRedColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.beenhere_rounded,
                        color: kRedColor,
                        size: 16,
                      )
                    ],
                  ),
                ),
        ),
      ],
    );
  }
}

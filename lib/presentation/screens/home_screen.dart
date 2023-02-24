import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:royex_task/core/constants/colors.dart';
import 'package:royex_task/core/di.dart';
import 'package:royex_task/domain/entities/product_entity.dart';
import 'package:royex_task/presentation/blocs/bloc/product_bloc.dart';
import 'package:royex_task/presentation/widgets/box_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kRedColor,
          elevation: 0,
        ),
        body: BlocProvider.value(
          value: injector<ProductBloc>()..add(GetProduct()),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is ProductLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is ProductSuccess) {
                  final List<String> imageList = state.productEntity.images
                      .map((image) => image.src)
                      .toList();
                  return ListView(
                    shrinkWrap: true,
                    children: [
                      // Featured Image
                      FeaturedSection(
                        productEntity: state.productEntity,
                      ),
                      // Box Carousel
                      BoxSlider(imageList: imageList),

                      // Model, Brand, Rating Price
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          children: [
                            Text(
                              state.productEntity.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('Model:'),
                                    Text('43S6'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Brand:'),
                                    Text('43S6'),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: kOrangeColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(children: const [
                                    Icon(Icons.star),
                                    Text('4.8')
                                  ]),
                                ),
                                const SizedBox(width: 10),
                                Text('(320 Reviews)')
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text('\$199'),
                                    Text('\$215'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('IQD 298,500'),
                                    Text('IQD 322,500'),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      //Tabs
                      Html(data: state.productEntity.bodyHtml),
                      // Ratings

                      // Related Items

                      // Buy Now/Add to cart with counter
                    ],
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        ));
  }
}

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
          child: Container(
            width: 90,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
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
          ),
        ),
      ],
    );
  }
}

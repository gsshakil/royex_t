import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royex_task/core/constants/colors.dart';
import 'package:royex_task/core/di.dart';
import 'package:royex_task/presentation/blocs/bloc/product_bloc.dart';
import 'package:royex_task/presentation/widgets/box_slider.dart';
import 'package:royex_task/presentation/widgets/featured_section.dart';
import 'package:royex_task/presentation/widgets/floating_button_group.dart';
import 'package:royex_task/presentation/widgets/model_brand_price.dart';
import 'package:royex_task/presentation/widgets/product_details_tab.dart';
import 'package:royex_task/presentation/widgets/rating_section.dart';
import 'package:royex_task/presentation/widgets/related_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/images/logo.png'),
          centerTitle: true,
          backgroundColor: kRedColor,
          toolbarHeight: 80,
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
                } else if (state is ProductError) {
                  return Center(
                    child: Text(state.errorMessage),
                  );
                } else if (state is ProductSuccess) {
                  final List<String> imageList = state.productEntity.images
                      .map((image) => image.src)
                      .toList();
                  return Stack(
                    children: [
                      ListView(
                        children: [
                          // Featured Image
                          FeaturedSection(productEntity: state.productEntity),
                          // Box Carousel
                          BoxSlider(imageList: imageList),
                          // Model, Brand, Rating Price
                          ModelBrandPrice(productEntity: state.productEntity),
                          //Tabs
                          ProductDetailsTab(productEntity: state.productEntity),
                          // Ratings
                          const RatingSection(),
                          // Related Items
                          const RelatedItems(),
                          const SizedBox(height: 100),
                        ],
                      ),
                      // Buy Now/Add to cart with counter
                      const FloatinButtonGroup()
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

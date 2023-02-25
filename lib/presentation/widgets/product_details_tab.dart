import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:royex_task/core/utility/product_tab_utility.dart';
import 'package:royex_task/domain/entities/product_entity.dart';

import '../../core/constants/colors.dart';

class ProductDetailsTab extends StatelessWidget {
  const ProductDetailsTab({
    Key? key,
    required this.productEntity,
  }) : super(key: key);

  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ProductTabUtility.index,
        builder: (context, value, child) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: ProductTabUtility.index.value == 0
                                ? kRedColor
                                : Theme.of(context).scaffoldBackgroundColor),
                        onPressed: () {
                          ProductTabUtility.index.value = 0;
                        },
                        child: SizedBox(
                          height: 40,
                          child: Center(
                            child: Text(
                              'Description',
                              style: TextStyle(
                                color: ProductTabUtility.index.value == 0
                                    ? kWhiteColor
                                    : kDarkGreyColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: ProductTabUtility.index.value == 1
                                ? kRedColor
                                : Theme.of(context).scaffoldBackgroundColor),
                        onPressed: () {
                          ProductTabUtility.index.value = 1;
                        },
                        child: SizedBox(
                          height: 40,
                          child: Center(
                            child: Text(
                              'Specification',
                              style: TextStyle(
                                color: ProductTabUtility.index.value == 1
                                    ? kWhiteColor
                                    : kDarkGreyColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: ProductTabUtility.index.value == 2
                                ? kRedColor
                                : Theme.of(context).scaffoldBackgroundColor),
                        onPressed: () {
                          ProductTabUtility.index.value = 2;
                        },
                        child: SizedBox(
                          height: 40,
                          child: Center(
                            child: Text(
                              'Downloads',
                              style: TextStyle(
                                color: ProductTabUtility.index.value == 2
                                    ? kWhiteColor
                                    : kDarkGreyColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ProductTabUtility.index.value == 0
                    ? Html(data: productEntity.bodyHtml)
                    : const SizedBox(),
                ProductTabUtility.index.value == 1
                    ? const Text('Specification')
                    : const SizedBox(),
                ProductTabUtility.index.value == 2
                    ? Html(data: productEntity.bodyHtml)
                    : const SizedBox(),
              ],
            ),
          );
        });
  }
}

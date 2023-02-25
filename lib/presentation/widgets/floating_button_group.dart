import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';
import 'package:royex_task/core/constants/colors.dart';

class FloatinButtonGroup extends StatelessWidget {
  const FloatinButtonGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: kWhiteColor,
        height: 82,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: ElegantNumberButton(
                initialValue: 0,
                minValue: 0,
                maxValue: 10,
                step: 0.5,
                decimalPlaces: 1,
                onChanged: (value) {
                  // get the latest value from here
                  // setState(() {
                  //   _defaultValue = value;
                  // });
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(right: 10),
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
                      // style: TextStyle(fontSize: 6),
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
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                    backgroundColor: kRedColor),
                onPressed: () {},
                child: const Center(
                  child: Text(
                    'Add to cart',
                    // style: TextStyle(fontSize: 6),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:royex_task/core/constants/colors.dart';

class FloatinButtonGroup extends StatefulWidget {
  const FloatinButtonGroup({
    Key? key,
  }) : super(key: key);

  @override
  State<FloatinButtonGroup> createState() => _FloatinButtonGroupState();
}

class _FloatinButtonGroupState extends State<FloatinButtonGroup> {
  int defaultValue = 0;

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
            Expanded(flex: 4, child: _buildCounterButtons()),
            Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.only(right: 5),
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
              flex: 3,
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

  Row _buildCounterButtons() {
    return Row(
      children: [
        Container(
          width: 40,
          decoration: BoxDecoration(
              border: Border.all(color: kLightGreyColor.withOpacity(0.2))),
          child: MaterialButton(
            onPressed: () {
              setState(() {
                defaultValue--;
                if (defaultValue <= 0) defaultValue = 0;
              });
            },
            child: const Text(
              '-',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: kGreyColor),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: kLightGreyColor.withOpacity(0.2))),
          padding: const EdgeInsets.all(5),
          width: 50,
          height: 42,
          child: Center(
            child: Text(
              defaultValue.toString(),
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: kLightGreyColor.withOpacity(0.2))),
          width: 40,
          child: MaterialButton(
            onPressed: () {
              setState(() {
                defaultValue++;
              });
            },
            child: const Text(
              '+',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: kGreyColor),
            ),
          ),
        ),
      ],
    );
  }
}

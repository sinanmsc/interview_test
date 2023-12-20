import 'package:flutter/material.dart';
import 'package:interview_test/core/extension/dynamic_size.dart';

class AuthHeaderWidget extends StatelessWidget {
  const AuthHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: const Alignment(0.6, -0.5),
          height: context.height(250),
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('asset/basket.png'),
            ),
          ),
        ),
        Positioned(
          left: context.width(168),
          bottom: context.width(78),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ecom',
                style: TextStyle(
                    fontFamily: 'sixcaps', fontSize: context.width(70)),
              ),
              Text(
                'Choose Your Own Fashion',
                style: TextStyle(
                  fontFamily: 'inter',
                  fontSize: context.width(15),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


import 'package:flutter/material.dart';

class OnBoardingContentHorizontal extends StatelessWidget {
  const OnBoardingContentHorizontal({super.key,required this.image,required this.title,required this.description});

  final String image,title,description;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        Image.asset(image,height: 250,),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w500),),
            const SizedBox(width: 16,),
            Text(description,textAlign: TextAlign.center,),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
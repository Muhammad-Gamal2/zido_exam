import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'home.seeAll'.tr(),
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 12,
                  color: Theme.of(context).primaryColor,
                ),
          ),
        )
      ],
    );
  }
}

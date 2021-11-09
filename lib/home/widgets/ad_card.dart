import 'package:flutter/material.dart';

import '../home.dart';

class AdCard extends StatelessWidget {
  const AdCard({Key? key, required this.ad}) : super(key: key);

  final Ad ad;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: const EdgeInsetsDirectional.only(top: 12, start: 8),
      decoration: BoxDecoration(color: ad.bgColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: width*0.45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ad.subtitle,
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 12,
                        color: ad.textColor,
                      ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  ad.title,
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 16,
                        color: ad.textColor,
                      ),
                ),
                const SizedBox(
                  height: 4,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: ad.buttonColor),
                  child: Text(
                    ad.button,
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 12,
                          color: ad.buttonTextColor,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            ad.image,
            matchTextDirection: true,
            height: 110,
            fit: BoxFit.fitHeight,
          )
        ],
      ),
    );
  }
}

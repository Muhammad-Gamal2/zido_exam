import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../home.dart';

class AuctionCard extends StatelessWidget {
  const AuctionCard({Key? key, required this.auction}) : super(key: key);

  final Auctions auction;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 140,
      margin: const EdgeInsets.only(bottom: 8),
      width: width - 16,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: const Color(0xffF1F4FD),
          borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Image.asset(
            auction.image,
            fit: BoxFit.fitHeight,
            height: 140,
            width: width * 0.3,
          ),
          const SizedBox(
            width: 4,
          ),
          Container(
            width: width * 0.6,
            padding: const EdgeInsets.only(top: 8, bottom: 6),
            child: Column(
              children: [
                Text(
                  auction.title,
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 12,
                      ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 0.0,
                    vertical: 0,
                  ),
                  minLeadingWidth: 15,
                  horizontalTitleGap: 4,
                  minVerticalPadding: 0,
                  dense: true,
                  isThreeLine: false,
                  leading: CircleAvatar(
                    radius: 15,
                    child: Image.asset(auction.userImage),
                  ),
                  title: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        auction.name,
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              color: Theme.of(context).primaryColor,
                              fontSize: 12,
                            ),
                      ),
                      Text(
                        auction.userName,
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              color: const Color(0xff686C73),
                              fontSize: 10,
                            ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.timer,
                          color: Color(0xff25C092),
                        ),
                        const SizedBox(width: 2,),
                        Text(
                          auction.time,
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                    fontSize: 12,
                                  ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: 70,
                      decoration: BoxDecoration(
                        color: auction.status == 'auction.join'.tr()
                            ? const Color(0xff496EE3)
                            : const Color(0xff25C092),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Center(
                        child: Text(
                          auction.status,
                          style: Theme.of(context).textTheme.headline2!.copyWith(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

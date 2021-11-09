import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../home.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.item}) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsetsDirectional.only(end: 8),
      width: 190,
      decoration: BoxDecoration(
          color: const Color(0xffF1F4FD),
          borderRadius: BorderRadius.circular(4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                clipBehavior: Clip.hardEdge,
                height: 140,
                width: 180,
                child: Image.asset(
                  item.image,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffF1F4FD),
                      borderRadius: BorderRadius.circular(4)),
                  height: 30,
                  width: 30,
                  child: const Icon(
                    CupertinoIcons.heart,
                    color: Color(0xff25C092),
                    size: 16,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(4),
                    ),
                    color: Color(0xff686C73),
                  ),
                  width: 175,
                  child: Center(
                    child: Text(
                      '36 : 21 : 36',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          RichText(
            text: TextSpan(
              text: item.price + " ",
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 14,
                  ),
              children: [
                TextSpan(
                  text: 'SAR'.tr(),
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 10,
                      ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            item.title,
            style:
                Theme.of(context).textTheme.headline2!.copyWith(fontSize: 10),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: const Color(0xffF1F4FD),
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 1),
                ),
                child: Text(
                  item.city,
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontSize: 12,
                      ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: const Color(0xffF1FDF3),
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(color: const Color(0xff25C092), width: 1),
                ),
                child: Text(
                  item.type,
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: const Color(0xff25C092),
                        fontSize: 12,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

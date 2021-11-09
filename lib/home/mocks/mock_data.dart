import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:zido_exam/home/home.dart';

class Mock {
  final ads = [
    Ad(
        id: 0,
        bgColor: Color(0xff25C092),
        buttonColor: Color(0xffFFD022),
        buttonTextColor: Colors.white,
        textColor: Colors.white,
        title: 'ads.shareZidoAppEarnPoints'.tr(),
        subtitle: 'ads.eachSignUpYouGet10points'.tr(),
        button: 'ads.shareNow'.tr(),
        image: "assets/images/Zido-Coins 3.png"),
    Ad(
        id: 1,
        bgColor: Color(0xffFFD022),
        buttonColor: Color(0xff262A33),
        textColor: Color(0xff262A33),
        buttonTextColor: Colors.white,
        title: 'ads.sellBuyAnythingWithAuctionSystem'.tr(),
        subtitle: 'ads.yourItemsAreValuable'.tr(),
        button: 'ads.startNow'.tr(),
        image: "assets/images/Vector Hand.png"),
  ];

  final auctions = [
    Auctions(
      id: 0,
      title: 'post.demoText'.tr(),
      image: "assets/images/home2.png",
      time: '00:10:36',
      name: 'Natalia Sanz',
      userName: '@natalia_sanzzido',
      userImage: 'assets/images/women.png',
      status: 'auction.pending'.tr(),
    ),
    Auctions(
      id: 1,
      title: 'post.demoText'.tr(),
      image: "assets/images/shoes.png",
      time: '00:20:22',
      name: 'Ayman',
      userName: '@Ayman',
      userImage: 'assets/images/women.png',
      status: 'auction.join'.tr(),
    ),
  ];

  final items = [
    Item(
        id: 0,
        title: 'item.demoText'.tr(),
        image: "assets/images/car.png",
        type: "item.used".tr(),
        city: "item.riyadh".tr(),
        price: "120,000"),
    Item(
        id: 1,
        title: 'item.demoText'.tr(),
        image: "assets/images/home.png",
        type: "item.new".tr(),
        city: "item.hafarAlBatin".tr(),
        price: "120,000"),
    Item(
        id: 2,
        title: 'item.demoText'.tr(),
        image: "assets/images/home.png",
        type: "item.new".tr(),
        city: "item.hafarAlBatin".tr(),
        price: "120,000"),
  ];

  final posts = [
    Post(
        id: 0,
        title: 'post.demoText'.tr(),
        image: "assets/images/holder.png",
        name: 'Natalia',
        time: 'post.time'.tr(),
        userName: '@natalia_sanzzido_dad',
        userImage: 'assets/images/women.png'),
    Post(
        id: 0,
        title: 'post.demoText'.tr(),
        image: "assets/images/holder.png",
        name: 'Natalia Sanz',
        time: 'post.time'.tr(),
        userName: '@natalia_sanzzido',
        userImage: 'assets/images/women.png'),
  ];

}
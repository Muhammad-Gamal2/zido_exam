import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zido_exam/home/mocks/mock_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:zido_exam/home/widgets/header_card.dart';

import '../home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mock = Mock();
    final ads = mock.ads;
    final items = mock.items;
    final posts = mock.posts;
    final auctions = mock.auctions;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png'),
        leading: TextButton(
          onPressed: () {},
          child: const Icon(Icons.notifications_none),
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                if (context.locale.toString() == 'en') {
                  EasyLocalization.of(context)!.setLocale(const Locale('ar'));
                } else {
                  EasyLocalization.of(context)!.setLocale(const Locale('en'));
                }
              });
            },
            child: const Icon(Icons.search),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        heroTag: "homeAdd",
      ),
      body: ListView(
        children: [
          CarouselSlider.builder(
            itemCount: ads.length,
            itemBuilder: (context, index, i) => AdCard(ad: ads[index]),
            options: CarouselOptions(
              height: 135,
              autoPlay: true,
              viewportFraction: 1,
              enableInfiniteScroll: true,
              autoPlayInterval: const Duration(milliseconds: 2500),
              scrollDirection: Axis.horizontal,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 16, left: 16),
            child: Column(
              children: [
                HeaderCard(title: "home.latestItems".tr()),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ItemCard(item: items[index]);
                    },
                  ),
                ),
                HeaderCard(title: "home.privateAuctions".tr()),
                ListView.builder(
                  itemCount: auctions.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return AuctionCard(auction: auctions[index]);
                  },
                ),
                HeaderCard(title: "home.latestPosts".tr()),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return PostCard(post: posts[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8,)
        ],
      ),
    );
  }
}

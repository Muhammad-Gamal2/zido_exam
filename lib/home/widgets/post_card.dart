import 'package:flutter/material.dart';

import '../home.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 8),
      height: 180,
      width: 310,
      decoration: BoxDecoration(
          color: const Color(0xffF1F4FD),
          borderRadius: BorderRadius.circular(4)),
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                post.image,
                fit: BoxFit.fitHeight,
                height: 180,
                width: 310,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: width,
                  height: 80,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff262A33), Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 8.0, end: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 294,
                        child: Text(
                          post.title,
                          style:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                      SizedBox(
                        width: 294,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 180,
                              height: 50,
                              child: ListTile(
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
                                  child: Image.asset(post.userImage),
                                ),
                                title: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      post.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2!
                                          .copyWith(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                    ),
                                    Text(
                                      post.userName,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2!
                                          .copyWith(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom:8.0),
                              child: Text(
                                post.time,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

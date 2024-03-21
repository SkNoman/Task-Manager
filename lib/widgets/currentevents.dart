import 'package:flutter/material.dart';
import 'package:task_manager/model/current_event_card_item.dart';

class CurrentEventList extends StatefulWidget {
  const CurrentEventList({
    super.key,
    this.listType,
  });
  final String? listType;

  @override
  // ignore: no_logic_in_create_state
  State<CurrentEventList> createState() =>
      _CurrentEventListState(mListType: listType);
  //NTC
}

class _CurrentEventListState extends State<CurrentEventList> {
  _CurrentEventListState({
    this.mListType,
  });

  final String? mListType;

  List<CurrentEventCardItem> items = [
    const CurrentEventCardItem(
      urlImage:
          'https://waltonbd.com/image/catalog/new_website/icon/logo/social_link_share_logo.jpg',
      title: 'Walton Day',
      type: 'Celebration',
    ),
    const CurrentEventCardItem(
      urlImage:
          'https://www.risingbd.com/media/imgAll/2019February/bg/Marcel_Logo20190314174250.jpg',
      title: 'Marcel Offer',
      type: 'Campaign',
    ),
    const CurrentEventCardItem(
      urlImage:
          'https://waltondigitech.com:8000/media/WEB-digi-1920X935_D35RU3U.jpg',
      title: 'Alter Offer',
      type: 'Discount 30%',
    ),
  ];
  List<CurrentEventCardItem> task = [
    const CurrentEventCardItem(
      urlImage:
          'https://waltondigitech.com:8000/media/WEB-digi-1920X935_D35RU3U.jpg',
      title: 'Alter Offer',
      type: 'Discount 30%',
    ),
    const CurrentEventCardItem(
      urlImage:
          'https://waltonbd.com/image/catalog/new_website/icon/logo/social_link_share_logo.jpg',
      title: 'Walton Day',
      type: 'Celebration',
    ),
    const CurrentEventCardItem(
      urlImage:
          'https://www.risingbd.com/media/imgAll/2019February/bg/Marcel_Logo20190314174250.jpg',
      title: 'Marcel Offer',
      type: 'Campaign',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    if (mListType == 'task') {
      items = task;
    }
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 8, 10, 0),
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, _) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) => buildCard(item: items[index]),
      ),
    );
  }
}

Widget buildCard({
  required CurrentEventCardItem item,
}) =>
    Container(
        width: 300,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        //margin: const EdgeInsets.fromLTRB(20, 8, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    item.urlImage,
                    fit: BoxFit.fill,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item.type,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            )
          ],
        ));

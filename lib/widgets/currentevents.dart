import 'package:flutter/material.dart';
import 'package:task_manager/model/current_event_card_item.dart';

class CurrentEventList extends StatefulWidget {
  const CurrentEventList({super.key});

  @override
  State<CurrentEventList> createState() => _CurrentEventListState();
}

class _CurrentEventListState extends State<CurrentEventList> {
  _CurrentEventListState();

  List<CurrentEventCardItem> items = [
    const CurrentEventCardItem(
      urlImage: 'assets/images/aniversary_icon.png',
      title: 'Anniversary',
      type: 'Arup & Sumi',
    ),
    const CurrentEventCardItem(
      urlImage: 'assets/images/cake.png',
      title: 'Birthday',
      type: 'Abdullah Shayan',
    ),
    const CurrentEventCardItem(
      urlImage: 'assets/images/engagement-ring.png',
      title: 'Engagement',
      type: 'Noman & Enni',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 8, 10, 0),
      height: 100,
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
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        //margin: const EdgeInsets.fromLTRB(20, 8, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              height: 70,
              width: 70,
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    item.urlImage,
                    height: 70,
                    width: 70,
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
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  item.type,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ));

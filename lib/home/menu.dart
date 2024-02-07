import 'package:flutter/material.dart';

class MenuBars extends StatelessWidget {
  const MenuBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
            onPressed: () => print('add post clicked'),
            child: Row(
              children: [
                const Icon(Icons.post_add_outlined),
                Text(
                  'Text',
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                )
              ],
            )),
        Container(
          height: 40,
          child: const VerticalDivider(color: Colors.black87),
        ),
        TextButton(
            onPressed: () => print('video live clicked'),
            child: Row(
              children: [
                const Icon(Icons.video_call, color: Colors.redAccent),
                Text(
                  'Live Video',
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                )
              ],
            )),
        Container(
          height: 40,
          child: const VerticalDivider(color: Colors.black87),
        ),
        TextButton(
            onPressed: () => print('video live clicked'),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.redAccent,
                ),
                Text(
                  'Location',
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                )
              ],
            )),
      ],
    );
  }
}
